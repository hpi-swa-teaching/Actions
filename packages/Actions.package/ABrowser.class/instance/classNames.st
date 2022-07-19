accessing
classNames
	
	^ self classes collect: [:each | (each respondsTo: #alternativeActionsClassName) ifTrue: [each alternativeActionsClassName] ifFalse: [each name]]