initilization
testHasAnyActionPragmasRecognizesCorrectPragmas

	| methodWithActionPragmas actionPragma |
	actionPragma := #wantsTestActions.
	
	ATestAActions pragmaKeywords: { actionPragma }.
	methodWithActionPragmas := AMockActionsMethodWithoutPragma class methodDict at: #actions.
	
	self assert: (ATestAActions hasAnyActionPragmas: methodWithActionPragmas)