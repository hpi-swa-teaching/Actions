representation
testActionTreeNodeAsString

	| treeNode action|
	
	action:= AMockActionsMethodWithoutPragma actionOne.
	treeNode:= ATreeNode value: action.
	self assert: (treeNode asString) equals: action title

	