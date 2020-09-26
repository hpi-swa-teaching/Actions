accessing
actionHolder

	^ self class actionPragmas collect: [:each | each methodClass theNonMetaClass]