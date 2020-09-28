handle shortcuts
addShortcut: aShortcut

	aShortcut ifNil: [^ self].
	AActions addShortcut: aShortcut for: self selectedAction in: self selectedClass.
	self changed: #mainView