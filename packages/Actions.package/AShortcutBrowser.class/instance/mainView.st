accessing
mainView

	| collection |
	collection := SortedCollection sortBlock: [:a :b |  a title <= b title].
	self actions do: [:each | each writeListRepresentationOn: collection].
	
	^ collection
			