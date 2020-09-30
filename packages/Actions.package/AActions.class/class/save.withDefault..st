handle actions
save: anActionDescription withDefault: aShortcut

	self 
		perform: (saveStrategie , #withDefault:) asSymbol 
		with: anActionDescription 
		with: aShortcut
	