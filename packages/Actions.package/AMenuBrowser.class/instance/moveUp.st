as yet unclassified
moveUp

	| index items itemIndex |
	self selectedPath 
		ifNil: [^ false];
		ifEmpty: [^ false].
	self selectedItem ifNil: [^ false].
	index := self selectedPath size.
	items := self mainView.
	[index > 1]
		whileTrue: [items := self getChildren: (self selectedPath at: index). index := index - 1].
		
	itemIndex := (items indexOf: self selectedItem).
	items 
		add: (items remove: self selectedItem)
		beforeIndex: itemIndex - 1.
	self 
		changed: #mainView;
		changed: #canMoveUp;
		changed: #canMoveDown
	