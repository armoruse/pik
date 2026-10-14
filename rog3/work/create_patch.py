from difflib import unified_diff
from pathlib import Path


original = Path(__file__).resolve().parent / "original-smali"
modified = Path(__file__).resolve().parent / "rog_src"
output = Path(__file__).resolve().parent.parent / "outputs" / "PikminX-feeding-fix.patch"
files = [
    Path("smali_classes3/com/pikminx/helper/PetalAccessibilityService.smali"),
    Path("smali_classes3/com/pikminx/helper/CardHighlight.smali"),
]

diff = []
for relative in files:
    before = [line + "\n" for line in (original / relative.name).read_text(encoding="utf-8").splitlines()]
    after = [line + "\n" for line in (modified / relative).read_text(encoding="utf-8").splitlines()]
    diff.extend(
        unified_diff(
            before,
            after,
            fromfile=f"a/{relative.as_posix()}",
            tofile=f"b/{relative.as_posix()}",
        )
    )

output.write_text("".join(diff), encoding="utf-8", newline="\n")
print(f"Wrote {output} ({len(diff)} lines)")
