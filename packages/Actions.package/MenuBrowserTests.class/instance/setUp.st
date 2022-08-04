opening
setUp
	
	super setUp.
	
	self menuBrowser: ATestMenuBrowser new.
	ATestAActions pragmaKeywords: { #wantsTestActions }.

