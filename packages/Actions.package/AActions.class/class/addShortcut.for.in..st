handle shortcuts
addShortcut: aShortcut for: anAction in: aClass
	|shortcutDict isResetConfirmed duplicateExists|
	
	shortcutDict := Shortcuts at: aClass ifAbsentPut: [Dictionary new].
	duplicateExists := (self duplicateOf: aShortcut in: shortcutDict).
	
	(duplicateExists)
			ifTrue: [isResetConfirmed := (PopUpMenu confirm: 
				'The Key combination you are about to assign is already used.
				 Do you really want to override: ', 
				(shortcutDict at: aShortcut), ' ?').
				isResetConfirmed 
						ifFalse:[^shortcutDict ]].

	^ shortcutDict at: aShortcut put: anAction 