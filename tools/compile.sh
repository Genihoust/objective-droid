if [[ $1 ]]; then
    PATH=$PATH:~/Work/University/Objective-Droid/build/Debug+Asserts/bin/
    llc --march=dalvik $1 -o /home/szm/Work/University/Objective-Droid/surgical/java/BoilerPlate/bin/decoded/smali/edu/objdroid/boilerplate/MainActivity.smali
    cd /home/szm/Work/University/Objective-Droid/surgical/java/BoilerPlate/bin
    apktool b decoded/ BoilerPlate1.apk
    echo "android" | jarsigner -verbose -sigalg MD5withRSA -digestalg SHA1 -keystore ~/.android/debug.keystore BoilerPlate1.apk androiddebugkey
    adb install -r BoilerPlate1.apk
elif [[ condition ]]; then
    echo "Please provide a program to compile."
fi