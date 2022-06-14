initilization
setUp
	
	super setUp.
	
	self shortcutBrowser: ATestMenuBrowser new.
	ATestAActions pragmaKeywords: { #wantsTestActions }.