export PATH="/Users/solomon/bin:$PATH"

# ionic + android studio setup
export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
export CAPACITOR_ANDROID_STUDIO_PATH="$HOME/Library/Application Support/JetBrains/Toolbox/apps/AndroidStudio/ch-0/202.7351085/Android Studio.app"
export PATH=$PATH:$ANDROID_SDK_ROOT/tools/bin
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator
export PATH=$PATH:$ANDROID_SDK_ROOT/build-tools
. "$HOME/.cargo/env"
