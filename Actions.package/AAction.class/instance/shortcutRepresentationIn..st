as yet unclassified
shortcutRepresentationIn: aClass

	| shortcut |
	shortcut := AActions shortcutFor: self in: aClass ifAbsent: [^ ''].
	^ self stringRepresentationFor: shortcut