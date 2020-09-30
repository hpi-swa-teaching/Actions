system event handling
reactToMethodEvent: anEvent

	"relevant methods are only on class side"
	anEvent itemClass isMeta
			ifFalse: [^ self]. 
		
	anEvent isAdded
		ifTrue: [self 
				ifRelevantWithClass: anEvent itemClass theNonMetaClass 
				andSaveStrategie: #addAction: 
				evaluate: anEvent item].
			
	(anEvent isModified)
		ifTrue: [self 
				ifRelevantWithClass: anEvent itemClass theNonMetaClass 
				andSaveStrategie: #updateAction: 
				evaluate: anEvent item].
			
	anEvent isRemoved
		ifTrue: [self 
				ifRelevantWithClass: anEvent itemClass theNonMetaClass 
				andSaveStrategie: #deleteAction:
				evaluate: anEvent item].
	
	self changed: #methods