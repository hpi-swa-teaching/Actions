as yet unclassified
putOnMenu: aMenu for: anObject

	self isSeperator
		ifTrue: [aMenu addLine. ^ self].
		
	self value isAction
		ifTrue: [aMenu 
					add: self value title , self value shortcutRepresentation
					action: [self value for: anObject].
				"adds help to menu item; add:help:action: is not able to take a block as parameter for action"
				aMenu balloonTextForLastItem: self value description].
		
	self value isActionGroup
		ifTrue: [ | subMenu |
			subMenu := MenuMorph new.
			self fill: subMenu for: anObject.
			aMenu 
				add: self value title 
				subMenu: subMenu]