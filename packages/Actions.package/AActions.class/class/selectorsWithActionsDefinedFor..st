as yet unclassified
selectorsWithActionsDefinedFor: aClass

	^(self actionPragmasFor: aClass) collect: [ :method | method selector]