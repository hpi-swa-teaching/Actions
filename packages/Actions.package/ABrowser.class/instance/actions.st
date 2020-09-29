accessing
actions

	self hasClassSelected
		ifFalse: [^ {}].
	^ AActions actionsFor: self selectedClass