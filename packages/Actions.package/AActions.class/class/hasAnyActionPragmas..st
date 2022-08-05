accessing
hasAnyActionPragmas: method

	| hasPragmas |
	hasPragmas := false.
	self pragmaKeywords do: 
		[:pragma | (method hasPragma: pragma) ifTrue:[hasPragmas := true.]].
	
	^hasPragmas