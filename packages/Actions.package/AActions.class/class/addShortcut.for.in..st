handle shortcuts
addShortcut: aShortcut for: anAction in: aClass

	(Shortcuts at: aClass ifAbsentPut: [Dictionary new])
		at: aShortcut put: anAction