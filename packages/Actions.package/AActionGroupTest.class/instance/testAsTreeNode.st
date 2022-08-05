representation
testAsTreeNode

	| treeNode actions actionGroup|
	
	actions:= MockActionsA actions.
	actionGroup:= AActionGroup new.
	actionGroup actions: actions.
	treeNode:= actionGroup asTreeNode.
	
	self assert: treeNode value equals: actionGroup.
	self assert: (treeNode children first) value equals: actions first.
	self assert: (treeNode children second) value equals: actions second
	