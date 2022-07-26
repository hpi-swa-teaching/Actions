method filtering
testIfisMethodRelevantFiltersSelectorsWithArguments

	self 
		assert: (ATestGlobalActions isMethodRelevant: #hello: ) equals: false;
		assert: (ATestGlobalActions isMethodRelevant: #hello:World: ) equals: false.