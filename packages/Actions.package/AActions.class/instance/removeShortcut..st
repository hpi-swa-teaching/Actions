as yet unclassified
removeShortcut: anEventKey

	self class removeShortcut: anEventKey in: self selectedClass.
	self changed: #actionsListRepresentation