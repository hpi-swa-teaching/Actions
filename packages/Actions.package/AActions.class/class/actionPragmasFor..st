accessing
actionPragmasFor: aClass

	^ self actionPragmas
			at: aClass
			ifAbsent: [OrderedCollection new]