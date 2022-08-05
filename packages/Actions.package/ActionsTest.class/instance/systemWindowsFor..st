system windows
systemWindowsFor: aWindowLabel

	^ SystemWindow windowsIn: World satisfying: [:w | w label = aWindowLabel]