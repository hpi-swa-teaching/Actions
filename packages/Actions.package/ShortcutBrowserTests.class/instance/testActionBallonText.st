helptext
testActionBallonText

	| helpText |
	
	helpText:= self shortcutBrowser helpForItem: self shortcutBrowser actionIndex.
	self assert: helpText isString
	