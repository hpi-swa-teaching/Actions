converting
asString

	| string |
	string := ''.
	self modifierPressed ifTrue: [string := self platformModifierString].
	self shiftPressed ifTrue: [string := string , '<shift>'].
	^ string , (self keyStringFor: self key)