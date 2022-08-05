opening
removeAShortcutBrowserWindows

	(self systemWindowsFor: ATestShortcutBrowser windowLabel) do: [:each |
		each model canDiscardEdits ifTrue: [each delete]].