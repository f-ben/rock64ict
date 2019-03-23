# rock64ict
IOTA controlled agent docker image for the rock64 SBC

## usage
This image exposes the default ports 2187/tcp (webinterface) and 1337/tcp (API). If you add ixi modules such as report.ixi you have to manually expose those additional ports. A new ict.cfg config file will be created on the first launch. After the initial setup every setting can be adjusted from within the webinterface.
