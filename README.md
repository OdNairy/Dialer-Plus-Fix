Dialer-Plus-Fix
===============

This tweak was created to resolved annoying bug with "0" button hold on Phone.app.

* Open Phone.app
* Select Keypad tab
* Tap and hold "0" button

Expected:
* Get "+" only in phone number label

Actual:
* "0+" 

Notes:
Reproduced in Belarus only.
https://discussions.apple.com/thread/5319223

##**How to install**##
* Install OpenSSH on iPhone
* Download .deb package form repository
* Copy it to your iPhone (use `scp` command for example)
* run command `dpkg -i package_name.deb`
