as yet unclassified
addShortcut: anEventKey

	AActions for: self selectedAction in: self selectedClass addShortcut: anEventKey.
	self changed: #actionsListRepresentation