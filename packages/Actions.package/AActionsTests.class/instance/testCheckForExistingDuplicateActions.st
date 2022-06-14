initilization
testCheckForExistingDuplicateActions

	| actionTitleA actionTitleB |
	
	"Check for duplicates in same method and check for duplicates in different methods"
	actionTitleA := (AAction from: MockActionsA mockActionMoveUpAsList) title.
	self assert: (ATestAActions checkIfDuplicatesExistsFor: MockActionsA) title equals: actionTitleA.
	
	actionTitleB := (AAction from: MockActionsB mockActionMoveUpAsList) title.
	self assert: (ATestAActions checkIfDuplicatesExistsFor: MockActionsB) title equals: actionTitleB
	
