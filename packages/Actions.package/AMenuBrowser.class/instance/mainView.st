accessing
mainView

	self tree: Dictionary new.
	^ self currentMenu children collect: [:each | each]