as yet unclassified
testAddRemoveNodes

	|root child1 child2 child3|
	root := ATreeNode seperator.
	self assert: root isSeperator.
	self assert:  root description isNil.
	
	child1 := ATreeNode value: 1.
	child2 := ATreeNode value: 2.
	child3 := ATreeNode value: 3.
	
	root addChild: child1.
	self assert: root hasChildren.
	self assert: (root children includes: child1).
	root addChild: child2.
	root addChild: child3 after: child1.
	self assert: ((root children at: 2) == child3).
	
	root removeChild: child1.
	self assert: (root children includes: child1) not.
	self assert: ((root followPath: root children) == child2).
	

