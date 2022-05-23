buttons
testHelpWindow
	
	| world helpWindow |
	helpWindow := self shortcutBrowser helpMenu.
	world := (PasteUpMorph newWorldForProject: nil).
	helpWindow openInWorld: world.
	world submorphOfClass: DialogWindow.
	self assert: (helpWindow) equals: (world submorphOfClass: DialogWindow)
	