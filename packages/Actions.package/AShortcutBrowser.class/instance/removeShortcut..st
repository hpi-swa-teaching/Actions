handle shortcuts
removeShortcut: anEventKey

	self aactionsApi removeShortcut: anEventKey in: self selectedClass.
	self changed: #mainView