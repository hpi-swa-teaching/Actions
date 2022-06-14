opening
testWindowCreation

	self removeAShortcutBrowserWindows	.
	ATestShortcutBrowser open.
	self assert: (self systemWindowsInclude: 'Shortcut Browser').
	self removeAShortcutBrowserWindows	
	
	