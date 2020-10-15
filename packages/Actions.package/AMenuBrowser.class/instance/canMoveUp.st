testing
canMoveUp
	
	self selectedPath 
		ifNil: [^ false];
		ifEmpty: [^ false].
	^ (self currentLevelItems indexOf: self selectedItem) > 1