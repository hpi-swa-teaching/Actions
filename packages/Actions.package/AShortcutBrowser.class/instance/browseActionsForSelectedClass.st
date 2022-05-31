as yet unclassified
browseActionsForSelectedClass
	(AActions selectorsWithActionsDefinedFor: self selectedClass) do: [ :aSelector |
	 self browseClassSide: self selectedClass selector: aSelector.
].