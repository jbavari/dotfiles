# install the packages for sublime text 3 on mac
SUBLIME_PACKAGE_PATH="/Users/$USER/Library/Application Support/Sublime Text 3/Packages/User"
mkdir -p "${SUBLIME_PACKAGE_PATH}"
cp SublimePackages.json "${SUBLIME_PACKAGE_PATH}/Package Control.sublime-settings"

# Get Sublime as a nice shortcut path
mkdir -p ~/bin
ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" ~/bin/subl