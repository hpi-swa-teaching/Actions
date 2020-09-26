handle shortcuts
addShortcut: anEventKey for: anAction in: aClass

	(Shortcuts at: aClass ifAbsentPut: [Dictionary new])
		at: anEventKey put: anAction