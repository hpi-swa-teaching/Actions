code-style
testDotReturnConsistency
	
	| results |
	
	results := (self runArbitraryCodeRules: {#dotAfterReturn:} on: self objectsToTest).
	
	results do: [ :ruleResult | 
		ruleResult do: [ :each |
			self assert: each results values first result equals: 1 description: 'Dots after return found for: ' ,each. 
		]
	].