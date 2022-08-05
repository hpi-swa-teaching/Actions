testing
testShortcutIntegrity

	| shortcut |
	
	shortcut := AShortcut from: self shortcutCtrld.
	self assert: shortcut shiftPressed not.
	self assert: shortcut modifierPressed.
	self assert: shortcut key = $d.
	self assert: (shortcut asString = '<ctrl>d' or: shortcut asString = '<cmd>d').
	
	shortcut shiftPressed: true.
	self assert: shortcut shiftPressed.
	self assert: (shortcut asString = '<ctrl><shift>d' or: shortcut asString = '<cmd><shift>d')
	