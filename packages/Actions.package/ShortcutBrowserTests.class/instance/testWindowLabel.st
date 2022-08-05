buttons
testWindowLabel
	
	|ShortcutBrowser|
	
	ShortcutBrowser := AShortcutBrowser new.
	self assert: (ShortcutBrowser windowLabel) equals: 'Shortcut Browser'