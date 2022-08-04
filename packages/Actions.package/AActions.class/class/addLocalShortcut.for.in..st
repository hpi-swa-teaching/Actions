handle shortcuts
addLocalShortcut: aShortcut for: anAction in: aClass

	| shortcutDict |
	
	shortcutDict := Shortcuts at: aClass ifAbsentPut: [Dictionary new].
	
	(self overwritePotentialDuplicate: anAction at: aShortcut for: aClass)
		ifTrue: [^ shortcutDict at: aShortcut put: anAction]
		ifFalse: [^ shortcutDict]

	