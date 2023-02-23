global actions
testGlobalActionDict

	| globalActionsDict |
	globalActionsDict := ATestGlobalActions allGlobalActionDict.
	
	self 
		assert: globalActionsDict size equals: 2;
		assert: (globalActionsDict at: 'Move up') equals: (AGlobalAction from: ATestGlobalActions action1 in: nil);
		assert: (globalActionsDict at: 'Move Down') equals: (AGlobalAction from: ATestGlobalActions action2 in: nil).
	