handle shortcuts
keyPress: evt list: list

	self aactionsApi shortcutFor: self event: evt.
	^true