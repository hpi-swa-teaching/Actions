write representation
writeListRepresentationOn: aCollection

	self actions do: [:each | each writeListRepresentationOn: aCollection]