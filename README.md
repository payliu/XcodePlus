XcodePlus
=========

Xcode plugin to plus extra feature.

- delete line, even mulit-lines

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


### Delete Line

The default short-cut is `^d`, if you would like change it, please refer to [Custom Shortcut](Custom Shortcut)

- Xcode > menu > Edit > `Delete Line`
- ![deleteline-git]


# Custom Shortcut
- If you want the shortcut of `delete-line` like eclipse using `⌘D`
	- open `System Preferences` > `Keyboard` > `Keyboard Shortcuts` 
	- ![shortcut]

#License
MIT License



[alcatraz]: http://mneorr.github.io/Alcatraz/ "Alcatraz"
[deleteline-git]: https://raw.github.com/payliu/XcodePlus/master/screenshot/deleteline.gif
[shortcut]: https://raw.github.com/payliu/XcodePlus/master/screenshot/custom-shortcut.png