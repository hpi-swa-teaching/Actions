handle shortcuts
addShortcut: aShortcut

	aShortcut ifNil: [^ self].
	self aactionsApi addShortcut: aShortcut for: self selectedAction in: self selectedClass.
	self changed: #mainView