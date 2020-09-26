initialization
addStringMorph

	self stringMorph: StringMorph new.
	self stringMorph contents: ''.
	self addMorphCentered: self stringMorph