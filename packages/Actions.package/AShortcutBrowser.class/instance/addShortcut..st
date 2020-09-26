handle shortcuts
addShortcut: anEventKey

	AActions for: self selectedAction in: self selectedClass addShortcut: anEventKey.
	self changed: #mainView