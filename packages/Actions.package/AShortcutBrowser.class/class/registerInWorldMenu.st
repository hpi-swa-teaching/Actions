as yet unclassified
registerInWorldMenu

	(self environment valueOf: #TheWorldMenu) ifNotNil: [:worldMenu |
		worldMenu registerOpenCommand: (Array 
			with: 'Shortcut Browser' 
			with: (Array
				with: self
				with: #open))]