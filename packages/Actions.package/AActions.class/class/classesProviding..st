handle shortcuts
classesProviding: anAction

	|classActionDict|
	
	classActionDict := Dictionary new.
	self classesWithActions do: [:class | (self actionsFor: class) do: [:action | action title = anAction title ifTrue: [
				classActionDict at: class ifPresent: [:actionList | actionList add: action] ifAbsentPut: [OrderedCollection new add: action; yourself]]]].
	
	^classActionDict
	