testing
recognizes: aMethod

	^ aMethod pragmas 
		anySatisfy: [:each | self pragmaKeywords includes: each keyword]

	