accessing
mainView

	| stream |
	stream := WriteStream on: OrderedCollection new.
	self actions do: [:each | each writeListRepresentationOn: stream].
	
	^ stream contents
			