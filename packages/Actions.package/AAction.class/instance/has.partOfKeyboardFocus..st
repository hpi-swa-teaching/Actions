evaluating
has: aMorph partOfKeyboardFocus: aFocusedMorph

		(aMorph = aFocusedMorph) ifTrue: [^ true] ifFalse: [^false].
