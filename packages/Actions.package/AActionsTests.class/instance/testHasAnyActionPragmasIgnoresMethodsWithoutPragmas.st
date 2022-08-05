initilization
testHasAnyActionPragmasIgnoresMethodsWithoutPragmas

	| methodWithoutPragmas actionPragma |
	actionPragma := #wantsTestActions.
	
	ATestAActions pragmaKeywords: { actionPragma }.
	methodWithoutPragmas := AMockActionsMethodWithoutPragma class methodDict at: #methodWithoutPragma.
	
	self deny: (ATestAActions hasAnyActionPragmas: methodWithoutPragmas)