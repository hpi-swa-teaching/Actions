opening
testWindowCreation

	self removeAShortcutBrowserWindows	.
	AShortcutBrowser open.
	self assert: (SystemWindow windowsIn: World satisfying: [:w | w label = 'Shortcut Browser']) size
		equals: 1.
	self removeAShortcutBrowserWindows	
	
	