accessing
classesWithActions

	^ self actionPragmas collect: [:each | each methodClass theNonMetaClass]