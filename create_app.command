# Beta Access Software Utility
# (c) Copyright 2020, 2023 chris1111 
# This will create a Apple Bundle App Beta Access Software Utility
# Dependencies: osacompile
PARENTDIR=$(dirname "$0")
cd "$PARENTDIR"
# Declare some VARS
APP_NAME="Beta Access Software Utility.app"
SOURCE_SCRIPT="Beta Access Software Utility"/Contents/Resources/Scripts/"Beta Access Software Utility.applescript"
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
Sleep 1
cp -Rp ./"Beta Access Software Utility"/Contents "$APP_NAME"


# Set icons Zip app
Sleep 1
zip -r "$APP_NAME".zip "$APP_NAME"
Sleep 1
rm -rf "$APP_NAME"
unzip "$APP_NAME".zip
Sleep 1
rm -rf "$APP_NAME".zip
echo " "

echo " = = = = = = = = = = = = = = = = = = = = = = = = = 
Beta Access Software Utility.app completed
= = = = = = = = = = = = = = = = = = = = = = = = =  "


