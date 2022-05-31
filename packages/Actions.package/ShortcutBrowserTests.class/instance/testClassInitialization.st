opening
testClassInitialization

	AShortcutBrowser initialize.
	self assert: true equals: (TheWorldMenu registry includes: 
	{'Shortcut Browser'. {AShortcutBrowser . #open}})