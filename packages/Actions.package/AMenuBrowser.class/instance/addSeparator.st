manipulate menu
addSeparator

	self withMenuDo: [:menu | menu addChild: (ATreeNode value: #-------------)]