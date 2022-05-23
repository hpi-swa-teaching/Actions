actions
removeAMenuBrowserWindows

	(SystemWindow windowsIn: World satisfying: [:w | w label = 'Menu Browser']) do: [:each |
		each model canDiscardEdits ifTrue: [each delete]].