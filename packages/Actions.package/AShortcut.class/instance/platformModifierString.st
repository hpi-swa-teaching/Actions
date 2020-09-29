converting
platformModifierString

	^ Smalltalk platformName = 'Mac OS'
		ifTrue: ['<cmd>']
		ifFalse: ['<ctrl>']