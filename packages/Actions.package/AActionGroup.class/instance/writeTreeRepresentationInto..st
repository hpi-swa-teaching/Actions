write representation
writeTreeRepresentationInto: aTreeNode

	| node |
	node := ATreeNode value: self.
	aTreeNode addChild: node.
	self actions do: [:each | each writeTreeRepresentationInto: node]