initilization
testHasAnyActionPragmasDoesNotRecognizeFalsePragmas

	| methodWithoutActionPragmas actionPragma |
	actionPragma := #wantsTestActions.
	
	ATestAActions pragmaKeywords: { actionPragma }.
	methodWithoutActionPragmas := MockActionsD class methodDict at: #methodWithoutActionPragmas.
	
	self deny: (ATestAActions hasAnyActionPragmas: methodWithoutActionPragmas)