accessing
helpMenu

	^ DialogWindow new
		title: 'How to use';
		createButton: 'Thanks!' value: true;
		exclusive: false;
		message: self helpText;
		yourself