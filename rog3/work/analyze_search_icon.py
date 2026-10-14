from pathlib import Path

import numpy as np
from PIL import Image


for name in ["pikminx-nectar-panel.png", "pikminx-validation.png"]:
    pixels = np.asarray(Image.open(Path("work") / name).convert("RGB"), dtype=np.int16)
    height, width, _ = pixels.shape
    center_x = round(width * 0.91)
    radius = max(8, round(width * 0.035))
    region = pixels[:, center_x - radius : center_x + radius + 1]
    dark = (region.max(axis=2) < 180) & (np.ptp(region, axis=2) <= 35)
    rows = dark.sum(axis=1)
    window = np.convolve(rows, np.ones(radius * 2 + 1, dtype=np.int32), mode="same")
    start, end = round(height * 0.03), round(height * 0.4)
    best_y = int(np.argmax(window[start : end + 1]) + start)
    print(name, "max dark at", best_y, "score", window[best_y])
    for y in [round(height * 0.042), 305, 840]:
        print("  ", y, "score", window[y])
    predicates = [
        lambda r, g, b: (r >= 210) & (g >= 165) & (b <= 120) & (r >= b + 90),
        lambda r, g, b: (r >= 220) & (g <= 145) & (b <= 170) & (r >= g + 70),
        lambda r, g, b: (b >= 150) & (b >= r + 25) & (b >= g + 10),
    ]
    ranges = [(0.11, 0.21), (0.19, 0.29), (0.27, 0.38)]
    matches = np.ones(height, dtype=bool)
    for predicate, (left, right) in zip(predicates, ranges):
        region = pixels[:, round(width * left) : round(width * right) + 1]
        matches &= predicate(*region.transpose(2, 0, 1)).sum(axis=1) >= max(5, width // 100)
    runs = []
    run_start = -1
    for y in range(round(height * 0.03), round(height * 0.8) + 1):
        if matches[y] and run_start < 0:
            run_start = y
        if not matches[y] and run_start >= 0:
            runs.append((run_start, y - 1))
            run_start = -1
    if run_start >= 0:
        runs.append((run_start, round(height * 0.8)))
    run = max(runs, key=lambda p: p[1] - p[0])
    selector_y = sum(run) // 2
    tolerance = max(8, round(height * 0.025))
    best_y = int(np.argmax(window[selector_y - tolerance : selector_y + tolerance + 1]) + selector_y - tolerance)
    print("  selector", selector_y, "anchored icon", best_y, "score", window[best_y])
