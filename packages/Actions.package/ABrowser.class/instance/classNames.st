accessing
classNames
	
	^ self classes collect: [:each | (each respondsTo: #alternativeName) ifTrue: [each alternativeName] ifFalse: [each name]]