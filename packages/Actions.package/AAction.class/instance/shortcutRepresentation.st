printing
shortcutRepresentation

	| shortcuts |
	shortcuts := AActions 
		shortcutsFor: self 
		in: self clazz name
		ifAbsent: [^ ''].
	^ '(' , ((shortcuts collect: #asString) joinSeparatedBy: ', ' ) , ')'