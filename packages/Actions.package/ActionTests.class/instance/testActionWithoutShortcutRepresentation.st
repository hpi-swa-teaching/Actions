as yet unclassified
testActionWithoutShortcutRepresentation

	| action |
	
	action := (MockActionsD actions first).
	self assert: action shortcutRepresentation equals: ''.