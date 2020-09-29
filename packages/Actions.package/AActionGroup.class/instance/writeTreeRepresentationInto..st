write representation
writeTreeRepresentationInto: aTreeNode

	| node |
	node := ATreeNode value: self.
	aTreeNode addChild: node.
	self actions collect: [:each | each writeTreeRepresentationInto: node]