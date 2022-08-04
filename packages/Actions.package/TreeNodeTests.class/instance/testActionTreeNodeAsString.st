representation
testActionTreeNodeAsString

	| treeNode |
	
	treeNode:= ATreeNode value: MockActionsD actionOne.
	self assert: (treeNode asString) equals: 'Move Up Test'

	