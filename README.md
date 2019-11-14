# macos-reminder

## Installation 
1. Install https://github.com/julienXX/terminal-notifier 
2. Enable ```launchctl load -w /System/Library/LaunchDaemons/com.apple.atrun.plist``` to make `at` command work
3. copy terminal-notifier to your Applications/ folder
4. chmod +x /Applications/Aterminal-notifier/Contents/MacOS/terminal-notifier 
4. copy function to .zshrc
5. Check notification settings 

## Usage
```$remindme <msg> <minutes>```
```$remindme <msg> <hours>h```
