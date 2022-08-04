helptext
testNotExistingBallonText

	| raiseException |
	
	raiseException:= false.
	[self shortcutBrowser helpForItem: 10]
		on: Error
		do: [:error | raiseException:= true].
		
	self assert: raiseException equals: true.
	
	