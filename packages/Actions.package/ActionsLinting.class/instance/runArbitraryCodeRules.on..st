private
runArbitraryCodeRules: rules on: testObjects

	| testRunner positiveResults |
	testRunner := (SLTestRunner new) environment: (SLDefaultEnvironment new).
	
	testRunner runOnTests: rules andTestObjects: testObjects.
	positiveResults := OrderedCollection new.
	rules do: [ :rule |
		positiveResults add: 
			(testObjects select: [:testObject | | result |
				result := testObject resultOf: rule.
				(result respondsTo: #>)
					ifTrue: [result result > 0]
					ifFalse: [result isNegative ] ])
	].
		
	^ positiveResults 