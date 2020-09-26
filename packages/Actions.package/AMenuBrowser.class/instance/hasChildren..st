testing
hasChildren: aSymbol

	^ (self tree at: aSymbol ifAbsent: [nil]) notNil 