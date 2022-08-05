shortcuts
testListItemsForSelectionWithShortcuts

	AActions reset.
	AActions addShortcut: (self shortcutCtrlb) for: (self shortcutBrowser selectedAction) in: (self shortcutBrowser selectedClass).
	self assert: self shortcutBrowser listItemsForCurrentSelection first equals: #-.
	"disregards the blockclosure part"
	self assert: (self shortcutBrowser listItemsForCurrentSelection second) first equals: 'Remove <Cmd-b>'