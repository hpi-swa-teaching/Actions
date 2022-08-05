shortcuts
testActionWithShortcutRepresentation

	| action |
	
	action := (AMockActionsMethodWithoutPragma actions first).
	ATestAActions addShortcut: self shortcutCtrlb for: action in: AMockActionsMethodWithoutPragma.
	action clazz: AMockActionsMethodWithoutPragma.
	Transcript show: (action shortcutRepresentation).
	self assert: action shortcutRepresentation equals: '(<Cmd-b>)'.