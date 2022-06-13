manipulate menu
removeItem

	self withMenuDo: [:menu | self canRemove ifTrue:
		[menu removeChild: self selectedItem].
		self selectedItem: nil]