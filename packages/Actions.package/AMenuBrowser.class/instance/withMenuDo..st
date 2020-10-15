manipulate menu
withMenuDo: aBlock

	| menu |
	menu := self currentMenu.
	aBlock value: (menu followPath: self selectedPath).
	AActions setMenuFor: self selectedClass to: menu.
	self changed: #mainView