accessing
shortcutTriggeringAction

	^ AAction 
			title: 'Trigger test action'
			action: #shortcutTriggered
			description: 'Communicate with AActionsTests and check if action was triggered with shortcut'