manipulate menu
removeItem

	self withMenuDo: [:menu | menu removeChild: self selectedItem]