updating
update: aSymbol

	aSymbol = #renamedClass
		ifTrue: [| index |
			index := self classIndex.
			self changed: #classes.
			self classIndex: index].
		
	aSymbol = #methods
		ifTrue: [self changed: #mainView]