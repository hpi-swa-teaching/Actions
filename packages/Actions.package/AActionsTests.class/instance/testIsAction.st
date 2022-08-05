classification
testIsAction

	| action |
	
	action:= MockActionsD actionOne.
	self assert: (ATestAActions testIfIsAction: action)