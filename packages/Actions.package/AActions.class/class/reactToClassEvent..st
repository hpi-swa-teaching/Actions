system event handling
reactToClassEvent: anEvent

	anEvent isRemoved
		ifTrue: [self removeAllActionsOf: anEvent itemClass theNonMetaClass].
		
	anEvent isRenamed
		ifTrue: [self moveActionsFrom: anEvent oldName to: anEvent newName].
		
	self changed: #classes