shortcuts
testRemoveShortcutsForDifferentClass

	| actionA |
	actionA := self addShortcutCtrldForAction.
	
	self assert: (actionA shortcuts first) equals: self shortcutCtrld.
	
	ATestAActions removeShortcutsFor: AMockActionsMoveUp.
	self assert: (actionA shortcuts first) equals: self shortcutCtrld