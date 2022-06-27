evaluating
executeSubsetActionInWorldFor: anObject at: aPosition
	
	^ self executeSubsetActionIn: World 
			for: anObject 
			at: aPosition 
			keyboardFocus: self keyboardFocusedMorphInWorld
			or: false
	