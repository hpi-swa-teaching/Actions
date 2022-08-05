initilization
testHasAnyActionPragmasDoesNotRecognizeFalsePragmas

	| methodWithoutActionPragmas actionPragma |
	actionPragma := #wantsTestActions.
	
	ATestAActions pragmaKeywords: { actionPragma }.
	methodWithoutActionPragmas := AMockActionsMethodWithoutPragma class methodDict at: #methodWithoutActionPragmas.
	
	self deny: (ATestAActions hasAnyActionPragmas: methodWithoutActionPragmas)