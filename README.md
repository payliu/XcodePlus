XcodePlus
=========

Xcode plugin to plus extra feature.

- delete line, even mulit-lines

# Usage
### Delete Line

The default short-cut is `^d`, if you would like change it, please refer to [Custom Shortcut](#custom-shortcut)

- Xcode > menu > Edit > `Delete Line`

![deleteline-git]
	
#Installation

1. install via [Alcatraz][alcatraz].

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

If you want the shortcut of `delete-line` like Eclipse using `⌘D`.

- open `System Preferences` > `Keyboard` > `Keyboard Shortcuts` 
![shortcut]
- If conflict, check your shortcut and remove from `Key Bindings` in Xcode.
![xcode-key-bindings]

#License
MIT License



[alcatraz]: http://mneorr.github.io/Alcatraz/ "Alcatraz"
[deleteline-git]: https://raw.github.com/payliu/XcodePlus/master/screenshot/deleteline.gif
[shortcut]: https://raw.github.com/payliu/XcodePlus/master/screenshot/custom-shortcut.png
[xcode-key-bindings]: https://raw.github.com/payliu/XcodePlus/master/screenshot/xcode-key-bindings.png