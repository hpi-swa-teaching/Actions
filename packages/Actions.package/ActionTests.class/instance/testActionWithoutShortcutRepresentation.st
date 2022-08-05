shortcuts
testActionWithoutShortcutRepresentation

	| action |
	
	action := (AMockActionsMethodWithoutPragma actions first).
	self assert: action shortcutRepresentation equals: ''.