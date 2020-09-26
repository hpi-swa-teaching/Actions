handle shortcuts
removeShortcut: anEventKey

	AActions removeShortcut: anEventKey in: self selectedClass.
	self changed: #actionsListRepresentation