## Instructions

```
1. Download the apk to a local directory
2. Run the script ./serenity.sh android -Dappium.app=<path_to_apk>
example: ./serenity.sh android -Dappium.app = /Users/laymui/dev/app-development-release-align.apk
3. If you specify the app path at serenity.properties, you may just run
./serenity.sh android
```

Download andriod studio and install emulator Nexus_5X_API_29 version 10.0

Configure env variable for android emulator:
```
export ANDROID_HOME=/Users/laymui/Library/Android/sdk
export PATH=$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$PATH
```

Reference to: https://github.com/LayMui/RNFirstApp

Once test completed, 

go to target/site/serenity

open index.html to view the serenity report

https://www.craft.do/s/SL4jUHkykqypAM