private
assertArbitraryCodeRules: rules
"Verifies an arbritrary code rule."
	| results |
	
	results := self runArbitraryCodeRules: rules on: self objectsToTest.
	
	results do: [ :ruleResult |
		self assert: 0 equals: ruleResult size description: rules 
	]