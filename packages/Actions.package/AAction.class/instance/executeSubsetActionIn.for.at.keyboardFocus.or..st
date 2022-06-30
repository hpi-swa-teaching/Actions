evaluating
executeSubsetActionIn: aMorph for: anObject at: aPosition keyboardFocus: aMorphWithFocus or: hasAnOwnerKeyboardFocus 
	
	"execute action if aMorph matches the mouse position and morph knownname and has keyboardfocus or an owner has keyboardfocus"
	
	| hasKeyboardFocus |
	
	(aMorph containsPoint: aPosition) ifFalse: [^ false ].
	
	hasKeyboardFocus := hasAnOwnerKeyboardFocus or: (aMorph = aMorphWithFocus).
	
	(aMorph knownName notNil and: hasKeyboardFocus) ifTrue: [
		self action 
			at: aMorph knownName 
			ifPresent: [:association | association value cull: anObject. ^ true]].
	
	aMorph submorphsDo: [ :submorph | 
		self executeSubsetActionIn: submorph 
			for: anObject 
			at: aPosition 
			keyboardFocus: aMorphWithFocus 
			or: hasKeyboardFocus].
		
	^ false
	