as yet unclassified
named: aSymbol from: anArray
	| group |
	group := self new
		title: aSymbol;
		yourself.
		
	anArray do: [:each | group addAction: (AAction from: each)].
	^ group