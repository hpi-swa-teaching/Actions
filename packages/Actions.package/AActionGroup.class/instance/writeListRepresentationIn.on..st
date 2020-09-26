as yet unclassified
writeListRepresentationIn: aClass on: aWriteStream

	self actions do: [:each | each writeListRepresentationIn: aClass on: aWriteStream]