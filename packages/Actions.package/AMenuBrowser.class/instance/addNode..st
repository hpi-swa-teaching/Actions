manipulate menu
addNode: anObject

	self withMenuDo: [:menu | | node |
		node := anObject.
		menu addChild: node after: self selectedItem.
		self selectedItem: node]