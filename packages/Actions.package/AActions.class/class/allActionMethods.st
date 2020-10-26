accessing
allActionMethods

	| methods |
	methods := OrderedCollection new.
	Smalltalk allClassesDo: [:aClass |
		aClass class methodsDo: [:method |
			(self recognizes: method)
				ifTrue: [methods add: method]]].
	^ methods