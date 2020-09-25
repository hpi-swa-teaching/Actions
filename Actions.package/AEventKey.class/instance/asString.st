converting
asString

	| string |
	string := ''.
	self modifierPressed ifTrue: [string := '<cmd> + '].
	self shiftPressed ifTrue: [string := string , '<shift> + '].
	^ string , self key asLowercase