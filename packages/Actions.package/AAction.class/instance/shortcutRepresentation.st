printing
shortcutRepresentation

	| shortcuts |
	shortcuts := AActions 
		shortcutsFor: self 
		in: self clazz
		ifAbsent: [^ ''].
	^ '(' , ((shortcuts 
		collect: [:each | | stream |
			stream := WriteStream on: ''.
			each printKeyStringOn: stream.
			stream contents]) 
		joinSeparatedBy: ', ' ) , ')'