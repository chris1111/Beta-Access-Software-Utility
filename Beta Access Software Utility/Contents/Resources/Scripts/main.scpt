# Applescript create by chris1111
# Beta Access Software Utility Copyright (c) 2021, 2023 chris1111 All rights reserved.
display dialog "
Welcome Beta Access Software Utility

Continue make a choice
(Default Update), 
(Public Access), 
(Developer Access)

Quit without choice.  
" with icon note buttons {"Quit", "Continue"} default button {"Continue"} cancel button {"Quit"}
set theAction to button returned of (display dialog "
Beta Access Software Utility

Make a choice " with icon note buttons {"Default Update", "Public Access", "Developer Access"} default button {"Developer Access"})
{"Default Update", "Public Access", "Developer Access"}
if theAction = "Developer Access" then
	do shell script "afplay '/System/Library/Components/CoreAudio.component/Contents/SharedSupport/SystemSounds/System/payment_success.aif' &> /dev/null &" with administrator privileges
	set progress description to "
Developer Beta Access
======================================"
	
	set progress total steps to 4
	
	set progress additional description to "System Analysing"
	delay 0.9
	set progress completed steps to 1
	
	set progress additional description to "Configuration software"
	delay 0.8
	set progress completed steps to 2
	
	set progress additional description to "Developer Beta Access activation"
	delay 0.9
	set progress completed steps to 3
	
	set progress additional description to "Open SoftwareUpdate prefPane"
	delay 0.9
	set progress completed steps to 4
	do shell script "afplay '/System/Library/Components/CoreAudio.component/Contents/SharedSupport/SystemSounds/accessibility/Sticky Keys MODIFER.aif' &> /dev/null &"
	delay 1
	do shell script "/System/Library/PrivateFrameworks/Seeding.framework/Versions/A/Resources/seedutil enroll DeveloperSeed" with administrator privileges
	do shell script "/usr/bin/open x-apple.systempreferences:com.apple.preferences.softwareupdate?client=bau"
	display alert "Developer Activate" message (theAction as text) buttons "OK" default button "OK" giving up after 6
	quit
else if theAction = "Public Access" then
	do shell script "afplay '/System/Library/Components/CoreAudio.component/Contents/SharedSupport/SystemSounds/System/payment_success.aif' &> /dev/null &" with administrator privileges
	set progress description to "
Public Beta Access
======================================"
	
	set progress total steps to 4
	
	set progress additional description to "System Analysing"
	delay 0.9
	set progress completed steps to 1
	
	set progress additional description to "Configuration software"
	delay 0.8
	set progress completed steps to 2
	
	set progress additional description to "Public Beta Access activation"
	delay 0.9
	set progress completed steps to 3
	
	set progress additional description to "Open SoftwareUpdate prefPane"
	delay 0.9
	set progress completed steps to 4
	do shell script "afplay '/System/Library/Components/CoreAudio.component/Contents/SharedSupport/SystemSounds/accessibility/Sticky Keys MODIFER.aif' &> /dev/null &"
	delay 1
	do shell script "/System/Library/PrivateFrameworks/Seeding.framework/Versions/A/Resources/seedutil enroll PublicSeed" with administrator privileges
	do shell script "/usr/bin/open x-apple.systempreferences:com.apple.preferences.softwareupdate?client=bau"
	display alert "Public Beta Activate" message (theAction as text) buttons "OK" default button "OK" giving up after 6
	quit
end if
if theAction = "Default Update" then
	do shell script "afplay '/System/Library/Components/CoreAudio.component/Contents/SharedSupport/SystemSounds/System/payment_success.aif' &> /dev/null &" with administrator privileges
	set progress description to "
Default Update
======================================"
	
	set progress total steps to 4
	
	set progress additional description to "System Analysing"
	delay 0.9
	set progress completed steps to 1
	
	set progress additional description to "Configuration software"
	delay 0.8
	set progress completed steps to 2
	
	set progress additional description to "Default Update activation"
	delay 0.9
	set progress completed steps to 3
	
	set progress additional description to "Open SoftwareUpdate prefPane"
	delay 0.9
	set progress completed steps to 4
	do shell script "afplay '/System/Library/Components/CoreAudio.component/Contents/SharedSupport/SystemSounds/accessibility/Sticky Keys MODIFER.aif' &> /dev/null &"
	delay 1
	do shell script "sudo /System/Library/PrivateFrameworks/Seeding.framework/Versions/A/Resources/seedutil unenroll" with administrator privileges
	do shell script "/usr/bin/open x-apple.systempreferences:com.apple.preferences.softwareupdate?client=bau"
	display alert "Default Update Activate" message (theAction as text) buttons "OK" default button "OK" giving up after 6
	quit
end if

