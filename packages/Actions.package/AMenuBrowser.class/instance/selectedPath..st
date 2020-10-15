accessing
selectedPath: anObject

	selectedPath := anObject.
	self 
		changed: #canMoveUp;
		changed: #canMoveDown