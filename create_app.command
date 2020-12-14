
# Beta Access Software Utility
# (c) Copyright 2020 chris1111 
# This will create a Apple Bundle App Beta Access Software Utility
# Dependencies: osacompile
PARENTDIR=$(dirname "$0")
cd "$PARENTDIR"
# Declare some VARS
APP_NAME="Beta Access Software Utility.app"
SOURCE_SCRIPT="Beta Access Software Utility"/Resources/"Beta Access Software Utility.applescript"
echo "= = = = = = = = = = = = = = = = = = = = = = = = =  "
echo "Beta Access Software Utility"
echo "= = = = = = = = = = = = = = = = = = = = = = = = =  "

# see if the app is already in Desktop
if [ -d "${3}./Beta Access Software Utility.app" ]; then
	rm -rf "${3}./Beta Access Software Utility.app"
fi

Sleep 2

# Create the dir structure
/usr/bin/osacompile -o "$APP_NAME" "$SOURCE_SCRIPT"

# Copy Resources to the right place
cp -rp ./"Beta Access Software Utility"/Resources/applet.icns "$APP_NAME"/Contents/Resources
cp -r ./"Beta Access Software Utility"/Resources/Credits.html "$APP_NAME"/Contents/Resources
cp -rp ./"Beta Access Software Utility"/Resources/Info.plist "$APP_NAME"/Contents
cp -rp ./"Beta Access Software Utility"/Resources/description.rtfd "$APP_NAME"/Contents/Resources
cp -rp ./"Beta Access Software Utility"/Resources/applet.rsrc "$APP_NAME"/Contents/Resources
cp -r ./"Beta Access Software Utility"/Resources/Recovery.rtf "$APP_NAME"/Contents/Resources/Scripts

# Change icons
./"Beta Access Software Utility"/Resources/icon.py ./"Beta Access Software Utility"/Resources/applet.icns ./"Beta Access Software Utility.app"

echo " = = = = = = = = = = = = = = = = = = = = = = = = = 
Beta Access Software Utility.app completed
= = = = = = = = = = = = = = = = = = = = = = = = =  "


