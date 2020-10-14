manipulate menu
addAction

	| action |
	action := AActionChooser getUserChoiceFor: self selectedClass.
	action ifNotNil: [self addNode: action asTreeNode]