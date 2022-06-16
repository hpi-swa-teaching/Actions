accessing
hasAnyPragmas: method
	|hasPragmas pragmas|
	hasPragmas := false.
	pragmas := self pragmaKeywords.
	pragmas do: [:pragma | (method hasPragma: pragma) ifTrue:[hasPragmas := true.]].
	^hasPragmas