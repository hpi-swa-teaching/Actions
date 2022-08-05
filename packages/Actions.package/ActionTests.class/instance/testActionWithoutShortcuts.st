shortcuts
testActionWithoutShortcuts
	
	| action | 
	
	action := MockActions moveUpAction clazz: MockActionsA; yourself.
	
	self assert: action hasShortcuts equals: false
	