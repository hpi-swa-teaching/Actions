browsing
browseActionsForSelectedClass

	(self aactionsApi selectorsWithActionsDefinedFor: self selectedClass) do: [ :aSelector |
	 self browseClassSide: self selectedClass selector: aSelector.
].