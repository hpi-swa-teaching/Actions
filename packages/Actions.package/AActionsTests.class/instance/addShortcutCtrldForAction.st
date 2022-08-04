shortcuts
addShortcutCtrldForAction
	| actionA |
	actionA := MockActions moveUpAction
		clazz: MockActionsA;
		yourself.
	ATestAActions addShortcut: self shortcutCtrld for: actionA in: MockActionsA.
	self assert: actionA shortcuts first equals: self shortcutCtrld.
	^ actionA