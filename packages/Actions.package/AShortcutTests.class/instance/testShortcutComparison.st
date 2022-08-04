as yet unclassified
testShortcutComparison

	|keyBoardEvent shortcut1 shortcut2 shortcut3|
	keyBoardEvent := KeyboardEvent new setType: #keystroke buttons: 72 position: 42@42 keyValue: $b asciiValue hand: nil stamp: nil.
	shortcut1 := AShortcut from: keyBoardEvent.
	shortcut2 := AShortcut modifierShift: $b.
	shortcut3 := AShortcut modifier: $B.
	
	self assert: shortcut1 = shortcut2.
	self assert: shortcut1 hash = shortcut2 hash.
	self assert: shortcut1 ~= shortcut3.
	