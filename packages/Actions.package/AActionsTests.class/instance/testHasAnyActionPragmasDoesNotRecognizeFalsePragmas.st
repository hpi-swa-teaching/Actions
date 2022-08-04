initilization
testHasAnyActionPragmasDoesNotRecognizeFalsePragmas

	| methodWithoutActionPragmas actionPragma |
	actionPragma := #wantsTestActions.
	
	ATestAActions pragmaKeywords: { actionPragma }.
	methodWithoutActionPragmas := MockActionsD class methodDict at: #methodWithoutActionPragmas.
	
	self assert: (ATestAActions hasAnyActionPragmas: methodWithoutActionPragmas) equals: false