accessing
actionsFor: aSymbol

	^ (Actions at: aSymbol ifAbsent: [^ {}]) values