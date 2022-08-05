shortcuts
testClassesWithAnActionAtAnEventKeyForDifferentShortcuts
	
	| classesA classesB |
	ATestAActions 
		addShortcut: self shortcutCtrlb for: AMockActions moveUpAction in: AMockActionsMoveUpDuplicate;
		addShortcut: self shortcutCtrld for: AMockActions moveUpAction in: AMockActionsMoveUp.
	
	classesA := ATestAActions classesWith: AMockActions moveUpAction at: self shortcutCtrlb.
	classesB := ATestAActions classesWith: AMockActions moveUpAction at: self shortcutCtrld.
	
	self 
		assert: classesA size equals: 1;
		assert: classesA first equals: AMockActionsMoveUpDuplicate.
		
	self 
		assert: classesB size equals: 1;
		assert: classesB first equals: AMockActionsMoveUp.
	