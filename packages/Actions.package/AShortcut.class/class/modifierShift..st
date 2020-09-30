creation
modifierShift: aCharacter

	^ self new
		modifierPressed: true;
		shiftPressed: true;
		key: aCharacter;
		yourself