initialize-release
install

	Actions := Actions ifNil: [Dictionary new].
	Menus := Menus ifNil: [Dictionary new].
	Shortcuts := Shortcuts ifNil: [Dictionary new].	
	
	SystemChangeNotifier uniqueInstance
		noMoreNotificationsFor: self;
		notify: self ofAllSystemChangesUsing: #systemEvent:.