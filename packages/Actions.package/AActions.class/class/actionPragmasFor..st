accessing
actionPragmasFor: aClass

	^ (self allActionMethods groupBy: [:each | each methodClass theNonMetaClass])
		at: aClass