as yet unclassified
actionPragmas

	| pragmas |
	pragmas := OrderedCollection new.
	Smalltalk allClassesDo: [:aClass |
		aClass class methodsDo: [:method |
			method pragmas do: [:pragma |
				pragma keyword = #wantsActions
					ifTrue: [pragmas add: pragma]]]].
	^ pragmas