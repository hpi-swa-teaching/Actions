manipulate menu
addNode: anObject

	self withMenuDo: [:menu | | node |
		node := anObject.
		self selectedItem
			ifNil: [menu addChild: node]
			ifNotNil: [menu addChild: node after: self selectedItem].
		self selectedItem: node]