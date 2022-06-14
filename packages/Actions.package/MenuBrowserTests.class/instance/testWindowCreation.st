opening
testWindowCreation

	self removeAMenuBrowserWindows	.
	ATestMenuBrowser open.
	self assert: (self systemWindowsInclude: 'Menu Browser').
	self removeAMenuBrowserWindows	