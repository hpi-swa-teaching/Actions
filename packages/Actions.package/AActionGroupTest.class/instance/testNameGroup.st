representation
testNameGroup

	| actionsRepresentation group |
	
	actionsRepresentation:= OrderedCollection new.
	actionsRepresentation add: (AMockActions mockActionMoveUpAsList).
	group:= AActionGroup named: #test from: actionsRepresentation.
	
	self assert: group title equals: #test.
	self assert: group actions first equals: AMockActions moveUpAction