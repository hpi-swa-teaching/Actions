manipulate menu
moveDown

	| index items itemIndex |
	self selectedPath 
		ifNil: [^ self];
		ifEmpty: [^ self].
	self selectedItem ifNil: [^ self].
	self canMoveDown ifFalse: [^ self].
	index := self selectedPath size.
	items := self mainView.
	[index > 1]
		whileTrue: [items := self getChildren: (self selectedPath at: index). index := index - 1].
		
	itemIndex := (items indexOf: self selectedItem).
	items 
		add: (items remove: self selectedItem)
		afterIndex: itemIndex.
	self 
		changed: #mainView;
		changed: #canMoveUp;
		changed: #canMoveDown
	