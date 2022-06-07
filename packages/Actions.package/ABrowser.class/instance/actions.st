accessing
actions

	self hasClassSelected
		ifFalse: [^ {}].
	^ self aactionsApi actionsFor: self selectedClass