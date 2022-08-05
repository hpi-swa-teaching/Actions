representation
testActionTreeNodeAsString

	| treeNode action|
	
	action:= MockActionsD actionOne.
	treeNode:= ATreeNode value: action.
	self assert: (treeNode asString) equals: action title

	