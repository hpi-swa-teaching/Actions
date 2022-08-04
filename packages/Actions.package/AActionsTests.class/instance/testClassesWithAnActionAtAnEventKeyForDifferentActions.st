shortcuts
testClassesWithAnActionAtAnEventKeyForDifferentActions
	
	| classesA classesB |
	ATestAActions 
		addShortcut: self shortcutCtrlb for: MockActions moveUpAction in: MockActionsA;
		addShortcut: self shortcutCtrlb for: MockActions moveDownAction in: MockActionsB.
	
	classesA := ATestAActions classesWith: MockActions moveUpAction at: self shortcutCtrlb.
	classesB := ATestAActions classesWith: MockActions moveDownAction at: self shortcutCtrlb.
	
	self 
		assert: classesA size equals: 1;
		assert: classesA first equals: MockActionsA.
		
	self 
		assert: classesB size equals: 1;
		assert: classesB first equals: MockActionsB.
	