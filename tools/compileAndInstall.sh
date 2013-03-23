if [[ $1 ]]; then
    PATH=$PATH:~/Work/University/Objective-Droid/build/Debug+Asserts/bin/
    llc --march=dalvik ${1}.ll -o /home/szm/Work/University/Objective-Droid/surgical/java/${1}/bin/decoded/smali/edu/objdroid/${1,,}/MainActivity.smali
    cd /home/szm/Work/University/Objective-Droid/surgical/java/${1}/bin
    apktool b decoded/ ${1}1.apk
    echo "android" | jarsigner -verbose -sigalg MD5withRSA -digestalg SHA1 -keystore ~/.android/debug.keystore ${1}1.apk androiddebugkey
    adb install -r ${1}1.apk
elif [[ condition ]]; then
    echo "Please provide a program to compile."
fi