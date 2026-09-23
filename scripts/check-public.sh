#!/usr/bin/env bash
# Fails if confidential material would be committed to this public repo.
# Denylist: generic markers below, plus one term per line in private/denylist.txt (gitignored).
set -euo pipefail
cd "$(git rev-parse --show-toplevel)"
fail=0

if git ls-files --cached --others --exclude-standard | grep -q '^private/'; then
  echo "FAIL: files under private/ are tracked or unignored"; fail=1
fi

files=$( { git ls-files --cached; git ls-files --others --exclude-standard; } | sort -u | grep -v '^scripts/check-public.sh$' || true)
patterns=('Not for circulation' '\[Likely\]' '\[Guessing\]' '[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[a-z]{2,}')
if [[ -f private/denylist.txt ]]; then
  while IFS= read -r term; do [[ -n "$term" ]] && patterns+=("$term"); done < private/denylist.txt
fi

for p in "${patterns[@]}"; do
  if hits=$(echo "$files" | xargs grep -nIE -- "$p" 2>/dev/null); then
    echo "FAIL: pattern '$p' found:"; echo "$hits"; fail=1
  fi
done

[[ $fail -eq 0 ]] && echo "OK: nothing confidential in committed files"
exit $fail
