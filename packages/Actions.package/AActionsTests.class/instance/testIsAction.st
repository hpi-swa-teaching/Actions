initilization
testIsAction

	| action |
	
	action:= MockActionsD actionOne.
	self assert: (ATestAActions testIfIsAction: action) equals: true