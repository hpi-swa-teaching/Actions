as yet unclassified
platformModifierString

	^ Smalltalk platformName = 'Mac OS'
		ifTrue: ['<cmd>']
		ifFalse: ['<ctrl>']