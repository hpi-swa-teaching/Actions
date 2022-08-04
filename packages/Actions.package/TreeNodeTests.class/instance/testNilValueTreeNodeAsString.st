representation
testNilValueTreeNodeAsString

	| treeNode raiseException |
	
	raiseException:= false.
	treeNode:= ATreeNode value: nil.
	[treeNode asString]
		on: MessageNotUnderstood
		do: [:error | raiseException:= true].
	self assert: raiseException equals: true.
	