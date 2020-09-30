action description helper
saveActionsWithDefaultShortcutsFrom: aCollection

	(aCollection 
		do: [:each | (each isKindOf: Association)
						ifTrue: [self save: (AAction from: each value) withDefault: each key]
						ifFalse: [self save: (AAction from: each)]])