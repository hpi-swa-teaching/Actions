opening
testCorrectBackend
	
	|ShortcutBrowser|
	
	ShortcutBrowser := AShortcutBrowser new.
	self assert: (ShortcutBrowser aactionsApi) equals: AActions