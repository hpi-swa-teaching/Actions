initilization
testHasAnyActionPragmasIgnoresMethodsWithoutPragmas

	| methodWithoutPragmas actionPragma |
	actionPragma := #wantsTestActions.
	
	ATestAActions pragmaKeywords: { actionPragma }.
	methodWithoutPragmas := MockActionsD class methodDict at: #methodWithoutPragma.
	
	self deny: (ATestAActions hasAnyActionPragmas: methodWithoutPragmas)