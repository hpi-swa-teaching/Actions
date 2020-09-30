creation
onlyKey: aCharacter

	^ self new
		modifierPressed: false;
		shiftPressed: false;
		key: aCharacter;
		yourself