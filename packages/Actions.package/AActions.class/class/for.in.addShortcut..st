handle shortcuts
for: anAction in: aClass addShortcut: anEventKey

	(Shortcuts at: aClass ifAbsentPut: [Dictionary new])
		at: anEventKey put: anAction