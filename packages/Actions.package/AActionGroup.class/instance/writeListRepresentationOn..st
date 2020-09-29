write representation
writeListRepresentationOn: aWriteStream

	self actions do: [:each | each writeListRepresentationOn: aWriteStream]