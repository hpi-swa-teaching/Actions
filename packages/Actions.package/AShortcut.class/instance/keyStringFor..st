converting
keyStringFor: aCharacter

	^ '<' , (aCharacter caseOf: {
		[ Character space ] -> [ 'space' ].
		[ Character tab ] -> [ 'tab' ].
		[ Character cr ] -> [ 'cr' ].
		[ Character lf ] -> [ 'lf' ].
		[ Character enter ] -> [ 'enter' ].

		[ Character backspace ] -> [ 'backspace' ].
		[ Character delete ] -> [ 'delete' ].

		[ Character escape ] -> [ 'escape' ].

		[ Character arrowDown ] -> [ 'down' ].
		[ Character arrowUp ] -> [ 'up' ].
		[ Character arrowLeft ] -> [ 'left' ].
		[ Character arrowRight ] -> [ 'right' ].

		[ Character end ] -> [ 'end' ].
		[ Character home ] -> [ 'home' ].
		[ Character pageDown ] -> [ 'pageDown' ].
		[ Character pageUp ] -> [ 'pageUp' ].

		[ Character euro ] -> [ 'euro' ].
		[ Character insert ] -> [ 'insert' ].

		} otherwise: [ ^ aCharacter asLowercase ]) , '>'