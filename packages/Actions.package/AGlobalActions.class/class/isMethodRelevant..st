handle actions
isMethodRelevant: aMethod 

	^ (aMethod selector = #allGlobalActionDict) not 
			and: ((aMethod selector includesSubString: #':') not)