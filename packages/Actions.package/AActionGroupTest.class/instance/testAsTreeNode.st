representation
testAsTreeNode

	| treeNode actions actionGroup|
	
	actions:= MockActionsA actions.
	actionGroup:= AActionGroup new.
	actionGroup actions: actions.
	treeNode:= actionGroup asTreeNode.
	
	self assert: treeNode value equals: actionGroup.
	"self assert: treeNode children equals: actions"