tree node
testWriteTreeRepresentationIntoATreeNode

	| action treenode |
	
	treenode := ATreeNode new.
	action := AMockActionsMethodWithoutPragma actions first.
	action writeTreeRepresentationInto: treenode.
	
	self assert: (treenode children contains: [:each | each value = action])
	
