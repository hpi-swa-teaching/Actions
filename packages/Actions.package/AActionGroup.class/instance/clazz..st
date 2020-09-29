accessing
clazz: aClass

	super clazz: aClass.
	self actions do: [:each | each clazz: aClass]

	