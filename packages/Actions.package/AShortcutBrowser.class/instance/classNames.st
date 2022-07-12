accessing
classNames

	| renamedClasses |
	
	renamedClasses := self renamedClasses.
	
	^self classes collect: [:each | (renamedClasses at: each name ifAbsent: nil) ifNil: [each name]]