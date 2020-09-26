handle shortcuts
addShortcut: anEventKey

	AActions addShortcut: anEventKey for: self selectedAction in: self selectedClass.
	self changed: #mainView