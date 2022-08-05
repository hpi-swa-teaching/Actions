shortcuts
testClassesWithAnActionAtAnEventKeyForDifferentActions
	
	| classesA classesB |
	ATestAActions 
		addShortcut: self shortcutCtrlb for: AMockActions moveUpAction in: AMockActionsMoveUpDuplicate;
		addShortcut: self shortcutCtrlb for: AMockActions moveDownAction in: AMockActionsMoveUp.
	
	classesA := ATestAActions classesWith: AMockActions moveUpAction at: self shortcutCtrlb.
	classesB := ATestAActions classesWith: AMockActions moveDownAction at: self shortcutCtrlb.
	
	self 
		assert: classesA size equals: 1;
		assert: classesA first equals: AMockActionsMoveUpDuplicate.
		
	self 
		assert: classesB size equals: 1;
		assert: classesB first equals: AMockActionsMoveUp.
	