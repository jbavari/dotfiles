# install the packages for sublime text 3 on mac
SUBLIME_PACKAGE_PATH="/Users/$USER/Library/Application Support/Sublime Text 3/Packages/User"
mkdir -p "${SUBLIME_PACKAGE_PATH}"
cp SublimePackages.json "${SUBLIME_PACKAGE_PATH}/Package Control.sublime-settings"
