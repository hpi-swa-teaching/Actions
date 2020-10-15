as yet unclassified
moveUp

	| index items itemIndex |
	self selectedPath 
		ifNil: [^ self];
		ifEmpty: [^ self].
	self selectedItem ifNil: [^ self].
	self canMoveUp ifFalse: [^ self].
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
	