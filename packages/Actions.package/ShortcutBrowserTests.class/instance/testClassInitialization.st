opening
testClassInitialization

	AShortcutBrowser initialize.
	self assert: true equals: (TheWorldMenu registry includes: 
	{AShortcutBrowser windowLabel. {AShortcutBrowser . #open}})