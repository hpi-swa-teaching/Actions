handle children
followPath: aCollection

	| index node |
	index := aCollection size.
	node := self.
	[index > 1]
		whileTrue: [node := node children detect: [:child | child = (aCollection at: index)]. 
			index := index - 1].
		
	^ node

