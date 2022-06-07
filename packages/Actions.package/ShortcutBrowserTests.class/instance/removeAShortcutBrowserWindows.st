actions
removeAShortcutBrowserWindows

	(self systemWindowsFor: 'Shortcut Browser') do: [:each |
		each model canDiscardEdits ifTrue: [each delete]].