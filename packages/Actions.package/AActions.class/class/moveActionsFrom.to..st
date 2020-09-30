handle actions
moveActionsFrom: oldName to: newName

	| newSymbol oldSymbol |
	newSymbol := newName asSymbol.
	oldSymbol := oldName asSymbol.
	Shortcuts at: newSymbol put: (Shortcuts at: oldSymbol).
	Actions at: newSymbol put: (Actions at: oldSymbol).
	self removeAllActionsOf: oldSymbol