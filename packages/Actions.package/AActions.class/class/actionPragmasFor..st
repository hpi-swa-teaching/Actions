accessing
actionPragmasFor: aClass

	^ (self allActionPragmas groupBy: [:each | each methodClass theNonMetaClass])
		at: aClass