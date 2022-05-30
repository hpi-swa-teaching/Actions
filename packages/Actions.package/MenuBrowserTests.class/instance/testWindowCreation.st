opening
testWindowCreation

	self removeAMenuBrowserWindows	.
	AMenuBrowser open.
	self assert: (SystemWindow windowsIn: World satisfying: [:w | w label = 'Menu Browser']) size
		equals: 1.
	self removeAMenuBrowserWindows	