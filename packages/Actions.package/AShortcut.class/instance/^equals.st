as yet unclassified
= anEventKey

	anEventKey class = self class
		ifFalse: [^ false].
	^ self modifierPressed = anEventKey modifierPressed and: [self key = anEventKey key]
	