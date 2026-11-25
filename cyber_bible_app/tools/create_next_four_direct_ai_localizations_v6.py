"""Generate the Lakota draft bundle with English fallback strings.

Masai, Meru, and Makhuwa-Meetto are intentionally not generated here because
the previous Swahili substitutions were not translations for those languages.
"""

import json
from pathlib import Path

root = Path('.')
source = json.loads((root / 'lib/l10n/app_en.arb').read_text(encoding='utf-8'))
output = {'@@locale': 'lkt'}
for key, value in source.items():
    if key == '@@locale' or key.startswith('@'):
        continue
    output[key] = value

destination = root / 'lib/l10n/app_lkt.arb'
destination.write_text(
    json.dumps(output, ensure_ascii=False, indent=2) + '\n',
    encoding='utf-8',
)
print('lkt wrote', len(output) - 1, 'English fallback messages')
