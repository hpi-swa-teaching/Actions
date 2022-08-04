shortcuts
testClassesWithAnActionAtAnEventKey
	
	| classes |
	ATestAActions 
		addShortcut: self shortcutCtrlb for: MockActions moveUpAction in: MockActionsA;
		addShortcut: self shortcutCtrlb for: MockActions moveUpAction in: MockActionsB.
	
	classes := ATestAActions classesWith: MockActions moveUpAction at: self shortcutCtrlb.
	
	self 
		assert: classes size equals: 2;
		assert: classes first equals: MockActionsA;
		assert: classes second equals: MockActionsB.
	