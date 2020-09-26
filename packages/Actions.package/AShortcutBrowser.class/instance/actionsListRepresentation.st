accessing
actionsListRepresentation

	| stream |
	stream := WriteStream on: OrderedCollection new.
	self actions do: [:each | each writeListRepresentationIn: self selectedClass on: stream].
	
	^ stream contents
			