shortcuts
testListItemsForSelectionWithNoShortcuts

	AActions reset.
	self assert: self shortcutBrowser listItemsForCurrentSelection equals: #()