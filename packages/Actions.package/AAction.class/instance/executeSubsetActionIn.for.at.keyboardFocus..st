evaluating
executeSubsetActionIn: aMorph for: anObject at: aPosition keyboardFocus: aMorphWithFocus
	
	"execute action if aMorph matches the mouse position and morph knownname and has keyboardfocus"
	
	(aMorph containsPoint: aPosition) ifFalse: [^ false ].
	
	aMorph knownName ifNotNil: [
		self action 
			at: aMorph knownName 
			ifPresent: [:association |
				(aMorphWithFocus isNil or: aMorphWithFocus = aMorph) ifTrue: [
					association value cull: anObject.
					^ true]]].
	
	aMorph submorphsDo: [ :submorph | self executeSubsetActionIn: submorph for: anObject at: aPosition keyboardFocus: aMorphWithFocus].
	^ false
	