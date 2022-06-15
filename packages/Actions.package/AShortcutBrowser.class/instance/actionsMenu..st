toolbuilder
actionsMenu: aMenu

	<actionsMenu>
	aMenu addTitle: 'foo'.
	aMenu addStayUpItemSpecial.
	
	aMenu addList: #(
		('Add keyboard shortcut' addShortcut  'Adds a new keyboard shortcut')
	) , self listItemsForCurrentSelection.
	
	^ aMenu