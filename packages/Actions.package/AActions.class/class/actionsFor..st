accessing
actionsFor: aClass

	^ (Actions at: aClass ifAbsent: [^ {}]) values