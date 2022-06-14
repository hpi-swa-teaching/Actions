handle shortcuts
keyPress: evt list: list
	Transcript show: evt.
	Transcript show: list.
	AActions shortcutFor: self event: evt.
	^true.