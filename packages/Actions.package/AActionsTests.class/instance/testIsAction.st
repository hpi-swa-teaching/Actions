classification
testIsAction

	| action |
	
	action:= AMockActionsMethodWithoutPragma actionOne.
	self assert: (ATestAActions testIfIsAction: action)