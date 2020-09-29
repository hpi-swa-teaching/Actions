printing
shortcutRepresentation

	| shortcuts |
	shortcuts := AActions 
		shortcutsFor: self 
		in: self clazz 
		ifAbsent: [^ ''].
	^ '(' , ((shortcuts collect: #asString) joinSeparatedBy: ', ' ) , ')'