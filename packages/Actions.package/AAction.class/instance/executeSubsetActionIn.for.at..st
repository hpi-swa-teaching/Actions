evaluating
executeSubsetActionIn: aMorph for: anObject at: aPosition
	
	"execute action if aMorph matches the mouse position and morph knownname"
	
	(aMorph containsPoint: aPosition) ifFalse: [^ false ].
	
	aMorph knownName ifNotNil: [
		self action 
			at: aMorph knownName 
			ifPresent: [:association | association value cull: anObject. ^ true]].
	
	aMorph submorphsDo: [ :submorph | self executeSubsetActionIn: submorph for: anObject at: aPosition].
	^ false
	