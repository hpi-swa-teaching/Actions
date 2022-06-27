opening
testWindowCreation

	self removeAShortcutBrowserWindows	.
	ATestShortcutBrowser open.
	self assert: (self systemWindowsInclude: ATestShortcutBrowser windowLabel).
	self removeAShortcutBrowserWindows	
	
	