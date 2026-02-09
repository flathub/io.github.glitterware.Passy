git clone https://github.com/TheAppgineer/flatpak-flutter 2> /dev/null
mkdir log 2> /dev/null
touch log/untranslated-messages.txt
set -euo pipefail
python flatpak-flutter/flatpak-flutter.py ./flatpak-flutter.yml
flatpak run org.flatpak.Builder build --user --install-deps-from=flathub --force-clean --ccache --sandbox --install io.github.glitterware.Passy.yml
rm -rf flatpak-flutter
