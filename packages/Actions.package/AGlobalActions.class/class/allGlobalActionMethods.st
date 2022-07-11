as yet unclassified
allGlobalActionMethods
	
	| methods |
	methods := OrderedCollection new.
	self class methodsDo: [: method | 
		(method pragmas anySatisfy: [: pragma | self pragmaKeyword = pragma keyword])
			ifTrue: [methods add: method]].
		
	^ methods