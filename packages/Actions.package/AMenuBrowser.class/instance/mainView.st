as yet unclassified
mainView

	self tree: Dictionary new.
	self actions do: [:each | each writeTreeRepresentationInto: self tree].
	^ self tree keys