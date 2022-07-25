write representation
asTreeNode

	| treeNode |
	treeNode := ATreeNode value: self.
	treeNode children: (self actions collect: [:each | each asTreeNode]).
	^ treeNode