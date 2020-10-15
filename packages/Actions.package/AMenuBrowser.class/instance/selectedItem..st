accessing
selectedItem: anObject

	selectedItem := anObject.
	self 
		changed: #selectedItem;
		changed: #canRemove;
		changed: #canMoveUp;
		changed: #canMoveDown