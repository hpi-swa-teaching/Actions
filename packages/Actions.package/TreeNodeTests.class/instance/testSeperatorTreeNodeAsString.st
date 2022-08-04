representation
testSeperatorTreeNodeAsString

	| treeNode |
	
	treeNode:= ATreeNode seperator.
	self assert: (treeNode asString) equals: #-------------

	