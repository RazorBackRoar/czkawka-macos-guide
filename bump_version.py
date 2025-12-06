import re, sys, os
from pathlib import Path

def parse(v): return list(map(int, v.strip().lstrip('v').split('.')))

def bump(v, type):
    major, minor, patch = parse(v)
    if type == 'major': return f"{major+1}.0.0"
    if type == 'minor': return f"{major}.{minor+1}.0"
    return f"{major}.{minor}.{patch+1}"

# Detect File
files = {"pyproject.toml": 'version = "', "setup.py": 'version="', "VERSION": ""}
target, pattern = next(((f, p) for f, p in files.items() if Path(f).exists()), (None, None))

if not target:
    print("No version file found. Creating VERSION."); Path("VERSION").write_text("1.0.0"); target="VERSION"
    current, new = "0.0.0", "1.0.0"
else:
    content = Path(target).read_text()
    if target == "VERSION":
        current = content.strip() or "0.0.0"
        new = bump(current, sys.argv[1])
        Path(target).write_text(new)
    else:
        match = re.search(r'version\s*=\s*["\']([^"\']+)["\']', content)
        if not match:
            raise SystemExit(f"Unable to locate version in {target}")
        current = match.group(1)
        new = bump(current, sys.argv[1])
        new_content = re.sub(r'(version\s*=\s*["\'])([^"\']+)(["\'])', rf'\1{new}\3', content, count=1)
        Path(target).write_text(new_content)

with open(os.environ['GITHUB_OUTPUT'], 'a') as f:
    f.write(f"new_version={new}\nold_version={current}\n")
