initilization
setUp
	
	super setUp.
	
	self shortcutBrowser: ATestShortcutBrowser new.
	ATestAActions pragmaKeywords: { #wantsTestActions }.