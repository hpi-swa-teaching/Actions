shortcuts
testRemoveShortcutsForAClassWithShortcuts

	| actionA |
	actionA := self addShortcutCtrldForAction.
	ATestAActions removeShortcutsFor: AMockActionsMoveUpDuplicate.
	self deny: actionA hasShortcuts