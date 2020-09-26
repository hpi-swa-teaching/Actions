manipulate menu
withMenuDo: aBlock

	| menu |
	menu := self currentMenu.
	aBlock value: menu.
	AActions setMenuFor: self selectedClass to: menu.
	self changed: #mainView