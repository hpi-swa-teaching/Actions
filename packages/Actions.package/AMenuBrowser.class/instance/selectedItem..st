accessing
selectedItem: anObject

	selectedItem := anObject.
	self changed: #selectedItem.
	self changed: #canRemove