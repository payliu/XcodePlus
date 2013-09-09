XcodePlus
=========

Xcode plugin to plus extra feature.

- delete line, even mulit-lines

# Usage
### Delete Line

The default short-cut is `⌘D`, like in Eclipse.

This shortcut should conflict to `Duplicate`, just remove it form `Key Bindings`.
Or you would like to set different shortcut, please refer to [Custom Shortcut](#custom-shortcut).

- Xcode > menu > Edit > `Delete Line`

![deleteline-git]
	
#Installation

1. install via [Alcatraz][alcatraz].
2. Restart Xcode

or

1. Clone it or Download ZIP and then build it.
2. You can find the `.xcplugin' from `'~/Library/Application Support/Developer/Shared/Xcode/Plug-ins`
3. Restart Xcode

# Uninstall

Delete the following directory

```
$HOME/Library/Application\ Support/Developer/Shared/Xcode/Plug-ins/XcodePlus\ Delete\ Line.xcplugin
```
	
# Custom Shortcut

#### Resovle Conflict of Key Bindings

- If conflict, check your shortcut and remove from `Key Bindings` in Xcode.
	- conflict `Duplicate`, `⌘D`
![xcode-key-bindings]
	- conflict `Delete Forward`, `^D`
![xcode-key-bindings-2]

#### Use my shortcut
If you want to change the shortcut of `delete-line` you like.

- open `System Preferences` > `Keyboard` > `Keyboard Shortcuts`
  - At Step#5, press the shoutcut you want.
![shortcut]

#License
MIT License



[alcatraz]: http://mneorr.github.io/Alcatraz/ "Alcatraz"
[deleteline-git]: https://raw.github.com/payliu/XcodePlus/master/screenshot/deleteline.gif
[shortcut]: https://raw.github.com/payliu/XcodePlus/master/screenshot/custom-shortcut.png
[xcode-key-bindings]: https://raw.github.com/payliu/XcodePlus/master/screenshot/xcode-key-bindings.png
[xcode-key-bindings-2]: https://raw.github.com/payliu/XcodePlus/master/screenshot/xcode-key-bindings-2.png