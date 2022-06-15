as yet unclassified
testDefaultShortcutIngetrity
	AMenuBrowser actions do: [:each | 
		self assert: (each first isKindOf: AAction).
		self assert: ((each second isNil) | (each second isKindOf: KeyboardEvent))].
	