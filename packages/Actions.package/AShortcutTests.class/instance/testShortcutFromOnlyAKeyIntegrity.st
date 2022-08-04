as yet unclassified
testShortcutFromOnlyAKeyIntegrity

	| shortcut key|
	
	key := $d.
	shortcut := AShortcut onlyKey: key.
	
	self 
		deny: shortcut shiftPressed;
		deny: shortcut modifierPressed;
		assert: shortcut key equals: key;
		assert: shortcut asString equals: 'd'.
	