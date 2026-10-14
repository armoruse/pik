from pathlib import Path


ROOT = Path(__file__).resolve().parent / "rog_src" / "smali_classes3" / "com" / "pikminx" / "helper"


def patch_method(path: Path, name: bytes, changes: list[tuple[bytes, bytes]]) -> None:
    data = path.read_bytes()
    start = data.index(b".method private " + name)
    end = data.index(b".end method", start) + len(b".end method")
    method = data[start:end]
    for old, new in changes:
        count = method.count(old)
        if count != 1:
            raise RuntimeError(f"{path.name}: {name.decode()} expected one {old!r}, found {count}")
        method = method.replace(old, new)
    path.write_bytes(data[:start] + method + data[end:])


service = ROOT / "PetalAccessibilityService.smali"
patch_method(
    service,
    b"closeFeedPikminDetailIfOpen(",
    [
        (b"0x3e4ccccd    # 0.2f", b"0x3f000000    # 0.5f"),
        (b"0x3e3851ec    # 0.18f", b"0x3e03126f    # 0.128f"),
        (b"const/16 v1, 0xd8", b"const/16 v1, 0x21c"),
        (b"const/16 v0, 0x1a4", b"const/16 v0, 0x12c"),
    ],
)
patch_method(
    service,
    b"openFeedNectarSearch(",
    [(b"0x3e19999a    # 0.15f", b"0x3d2a7efa    # 0.042f")],
)
patch_method(
    service,
    b"waitForFeedNectarPanelClose(",
    [(b"const-wide/16 v6, 0x1f4", b"const-wide/16 v6, 0x2bc")],
)

card = ROOT / "CardHighlight.smali"
patch_method(
    card,
    b"static findNeutralDarkControl(",
    [
        (b"0x3de147ae    # 0.11f", b"0x3cf5c28f    # 0.03f"),
        (b"0x3e75c28f    # 0.24f", b"0x3ecccccd    # 0.4f"),
    ],
)

print("Patched feeding coordinates, search range, and 700 ms panel-close retry interval.")
