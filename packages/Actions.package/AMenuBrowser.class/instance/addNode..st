manipulate menu
addNode: anObject

	self withMenuDo: [:menu | | node |
		node := anObject.
		menu addChild: node.
		self selectedItem: node]