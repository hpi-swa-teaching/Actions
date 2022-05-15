toolbuilder
openHelpMenu

	|a| 
	a := DialogWindow new.
	a title: 'How to use';
	createButton: 'Thanks!' value: true;
	exclusive: false;
	message: self helpText;
	openAsTool