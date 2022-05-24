accessing
actionDuplicateWarning: aAction

| window browseActionsButton| 

window := DialogWindow new.
window createButton: 'OK' value: true color: (Color r: 0.4 g: 0.0 b: 0.051).

browseActionsButton := window createCancelButton: 'Browse action' value: false.
browseActionsButton action: [self browse: aAction For: self selectedClass. window closeDialog].

window title: 'Warning'.
window message: 'You assigned the name "' , aAction title asString , '" to different actions
'.

window openAsTool.

			