accessing
actionPragmas

	^ self allActionMethods groupBy: [:each | each methodClass theNonMetaClass]