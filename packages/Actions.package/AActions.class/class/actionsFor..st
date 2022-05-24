accessing
actionsFor: aClass

	| methods actions |
	methods := (self actionPragmasFor: aClass) collect: [:each | each method].
	actions := OrderedCollection new.
	methods do: [:each | (self actionsFrom: each For: aClass) do: [ :action |actions add: action]].
	actions do: [:each | each clazz: aClass].
	^ actions