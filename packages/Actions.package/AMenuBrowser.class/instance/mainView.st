accessing
mainView

	self tree: Dictionary new.
	^(AActions menuFor: self selectedClass) children collect: [:each | each]