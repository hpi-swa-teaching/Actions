actions
removeAShortcutBrowserWindows

	(SystemWindow windowsIn: World satisfying: [:w | w label = 'Shortcut Browser']) do: [:each |
		each model canDiscardEdits ifTrue: [each delete]].