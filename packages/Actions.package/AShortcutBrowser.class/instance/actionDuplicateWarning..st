accessing
actionDuplicateWarning: aTitle

| window | 

window := DialogWindow new.
window createButton: 'OK' value: true color: (Color r: 0.4 g: 0.0 b: 0.051).
window title: 'Warning'.
window message: 'You assigned the name "' , aTitle asString , '" to different actions
'.
window openAsTool
			