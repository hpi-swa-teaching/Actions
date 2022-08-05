testing
canMoveDown

	| items |
	
	self selectedPath 
		ifNil: [^ false];
		ifEmpty: [^ false].
	items := self currentLevelItems.		
	^ (items indexOf: self selectedItem) < items size