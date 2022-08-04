as yet unclassified
testActionWithShortcutRepresentation

	| action |
	
	action := (MockActionsD actions first).
	ATestAActions addShortcut: self shortcutCtrlb for: action in: MockActionsD.
	action clazz: MockActionsD.
	Transcript show: (action shortcutRepresentation).
	self assert: action shortcutRepresentation equals: '(<Cmd-b>)'.