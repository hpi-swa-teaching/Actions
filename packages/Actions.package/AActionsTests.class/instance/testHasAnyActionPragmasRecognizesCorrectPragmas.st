initilization
testHasAnyActionPragmasRecognizesCorrectPragmas

	| methodWithActionPragmas actionPragma |
	actionPragma := #wantsTestActions.
	
	ATestAActions pragmaKeywords: { actionPragma }.
	methodWithActionPragmas := MockActionsD class methodDict at: #actions.
	
	self assert: (ATestAActions hasAnyActionPragmas: methodWithActionPragmas)