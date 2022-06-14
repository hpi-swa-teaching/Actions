as yet unclassified
browseActionsForSelectedClass
	
	self selectedClass ifNotNil: [
		(self aactionsApi selectorsWithActionsDefinedFor: self selectedClass) do: [ :aSelector |
			self browseClassSide: self selectedClass selector: aSelector.
		].
	].
	