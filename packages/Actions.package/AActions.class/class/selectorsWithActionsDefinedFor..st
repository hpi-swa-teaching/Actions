handle selectors
selectorsWithActionsDefinedFor: aClass

	^(self actionPragmasFor: aClass) collect: [ :method | method selector]