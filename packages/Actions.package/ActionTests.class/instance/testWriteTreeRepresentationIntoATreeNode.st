as yet unclassified
testWriteTreeRepresentationIntoATreeNode

	| action treenode |
	
	treenode := ATreeNode new.
	action := MockActionsD actions first.
	action writeTreeRepresentationInto: treenode.
	
	self assert: (treenode children contains: [:each | each value = action])
	
