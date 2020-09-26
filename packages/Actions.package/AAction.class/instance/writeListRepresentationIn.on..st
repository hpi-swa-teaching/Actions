as yet unclassified
writeListRepresentationIn: aClass on: aWriteStream

	aWriteStream nextPut: self title , (self shortcutRepresentationIn: aClass)