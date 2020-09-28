as yet unclassified
writeListRepresentationOn: aWriteStream

	self actions do: [:each | each writeListRepresentationOn: aWriteStream]