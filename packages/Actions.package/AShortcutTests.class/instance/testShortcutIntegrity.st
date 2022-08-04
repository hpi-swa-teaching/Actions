as yet unclassified
testShortcutIntegrity

	|shortcut|
	shortcut := AShortcut from: super shortcutCtrld.
	self assert: shortcut shiftPressed not.
	self assert: shortcut modifierPressed.
	self assert: shortcut key = $d.
	self assert: shortcut asString = '<ctrl>d'.
	
	shortcut shiftPressed: true.
	self assert: shortcut shiftPressed.
	shortcut asString = '<ctrl><shift>d'
	