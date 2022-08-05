evaluating
keyboardFocusedMorphInWorld

	World hands ifNil: [^ nil].
	World hands isEmpty ifTrue: [^ nil].
	^ World hands first keyboardFocus