initilization
testOneClassProvidingAnAction

	self assert: (ATestAActions classesProviding: AMockActionsAddAsList actions first) keys equals: {AMockActionsAddAsList}