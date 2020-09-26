accessing
actionHolder

	^ AActions actionPragmas collect: [:each | each methodClass theNonMetaClass]