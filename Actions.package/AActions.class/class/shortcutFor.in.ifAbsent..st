as yet unclassified
shortcutFor: anAction in: aClass ifAbsent: aBlock

	^ (Shortcuts at: aClass ifAbsent: [^ aBlock value]) 
		keyAtValue: anAction ifAbsent: aBlock