if [[ $1 ]]; then
    PATH=$PATH:~/Work/University/Objective-Droid/build/Debug+Asserts/bin/
    llc --march=dalvik $1 -o MainActivity.smali
elif [[ condition ]]; then
    echo "Please provide a program to compile."
fi