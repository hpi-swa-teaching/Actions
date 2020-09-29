as yet unclassified
moveActionsFrom: oldName to: newName

	Shortcuts at: newName put: (Shortcuts at: oldName).
	self removeAllActionsOf: oldName