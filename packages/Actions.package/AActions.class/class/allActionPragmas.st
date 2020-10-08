accessing
allActionPragmas

	| pragmas |
	pragmas := OrderedCollection new.
	Smalltalk allClassesDo: [:aClass |
		aClass class methodsDo: [:method |
			method pragmas do: [:pragma |
				pragma keyword = self pragmaKeyword
					ifTrue: [pragmas add: pragma]]]].
	^ pragmas