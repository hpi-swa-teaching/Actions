shortcuts
testRemoveShortcutsForDifferentClass

	| actionA |
	actionA := self addShortcutCtrldForAction.
	
	self assert: (actionA shortcuts first) equals: self shortcutCtrld.
	
	ATestAActions removeShortcutsFor: MockActionsB.
	self assert: (actionA shortcuts first) equals: self shortcutCtrld