as yet unclassified
ifRelevantWithClass: aClass andSaveStrategie: aSymbol evaluate: aCompiledMethod

	(self isRelevant: aCompiledMethod)
		ifFalse: [^ self].
		
	saveStrategie := aSymbol.
	clazz := aClass.
	aCompiledMethod valueWithReceiver: aCompiledMethod methodClass arguments: {self}.
	clazz := nil.
	saveStrategie := nil