shortcuts
testRemoveShortcutsForAClassWithShortcuts

	| actionA |
	actionA := self addShortcutCtrldForAction.
	ATestAActions removeShortcutsFor: MockActionsA.
	self deny: actionA hasShortcuts