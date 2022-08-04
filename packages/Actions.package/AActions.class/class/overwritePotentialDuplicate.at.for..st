handle shortcuts
overwritePotentialDuplicate: anAction at: aKey for: aClass
	
	| isResetConfirmed duplicateKey duplicateAction |
	
	duplicateKey := self duplicateOf: aKey in: (Shortcuts at: aClass).
	duplicateAction := (Shortcuts at: aClass) at: duplicateKey ifAbsent: [nil]. 
	isResetConfirmed := false.
	
	(duplicateKey notNil and: duplicateAction ~= anAction) 
			ifTrue: [isResetConfirmed := PopUpMenu confirm: 
				'The Key combination you are about to assign is already used. Do you want to override: ', 
					duplicateAction, ' ?']
			ifFalse: [^ true].

	isResetConfirmed 
		ifTrue: [self removeShortcut: duplicateKey in: aClass]
		ifFalse: [^ false]
	