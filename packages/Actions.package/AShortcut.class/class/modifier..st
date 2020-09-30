creation
modifier: aCharacter

	^ self new
		modifierPressed: true;
		shiftPressed: false;
		key: aCharacter;
		yourself