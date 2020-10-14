as yet unclassified
asTreeNode

	| treeNode |
	treeNode := ATreeNode value: self.
	treeNode children: (self actions collect: [:each | each asTreeNode]).
	^ treeNode