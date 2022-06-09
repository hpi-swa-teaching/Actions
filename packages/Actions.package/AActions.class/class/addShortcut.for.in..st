handle shortcuts
addShortcut: aShortcut for: anAction in: aClass
	|shortcutDict isResetConfirmed duplicateKey|
	
	shortcutDict := Shortcuts at: aClass ifAbsentPut: [Dictionary new].
	duplicateKey := (self duplicateOf: aShortcut in: shortcutDict).
	
	(duplicateKey notNil)
			ifTrue: [isResetConfirmed := (PopUpMenu confirm: 
				'The Key combination you are about to assign is already used. Do you want to override: ', 
				(shortcutDict at: duplicateKey), ' ?').
				isResetConfirmed 
						ifTrue:[^ shortcutDict at: duplicateKey put: anAction. ]
						ifFalse:[^shortcutDict ]].

	^ shortcutDict at: aShortcut put: anAction. 