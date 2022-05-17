handle shortcuts
addShortcut: aShortcut for: anAction in: aClass

|shortcutDict isResetConfirmed|
	shortcutDict := Shortcuts at: aClass ifAbsentPut: [Dictionary new].
	
	(shortcutDict keys includes: aShortcut) 
		ifTrue: [isResetConfirmed := (PopUpMenu confirm: 'The Key combination you are about to assign is already used. Do you want to override: ', (shortcutDict at: aShortcut), ' ?').
				isResetConfirmed 
					ifFalse:[^shortcutDict ]].

	^ shortcutDict at: aShortcut put: anAction. 