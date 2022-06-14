opening
testClassInitialization

	ATestShortcutBrowser initialize.
	self assert: true equals: (TheWorldMenu registry includes: 
	{'Shortcut Browser'. {ATestShortcutBrowser . #open}})