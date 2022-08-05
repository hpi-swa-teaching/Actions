shortcuts
addShortcutCtrldForAction
	| actionA |
	actionA := AMockActions moveUpAction
		clazz: AMockActionsMoveUpDuplicate;
		yourself.
	ATestAActions addShortcut: self shortcutCtrld for: actionA in: AMockActionsMoveUpDuplicate.
	self assert: actionA shortcuts first equals: self shortcutCtrld.
	^ actionA