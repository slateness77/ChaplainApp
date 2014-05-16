# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
AvailableDay.destroy_all

	AvailableDay.create(dow:"Monday", shift: "Day Shift")
	AvailableDay.create(dow:"Monday", shift: "Swing Shift")
	AvailableDay.create(dow:"Monday", shift: "Grave Shift")
	AvailableDay.create(dow:"Tuesday", shift: "Day Shift")
	AvailableDay.create(dow:"Tuesday", shift: "Swing Shift")
	AvailableDay.create(dow:"Tuesday", shift: "Grave Shift")
	AvailableDay.create(dow:"Wednesday", shift: "Day Shift")
	AvailableDay.create(dow:"Wednesday", shift: "Swing Shift")
	AvailableDay.create(dow:"Wednesday", shift: "Grave Shift")
	AvailableDay.create(dow:"Thursday", shift: "Day Shift")
	AvailableDay.create(dow:"Thursday", shift: "Swing Shift")
	AvailableDay.create(dow:"Thursday", shift: "Grave Shift")
	AvailableDay.create(dow:"Friday", shift: "Day Shift")
	AvailableDay.create(dow:"Friday", shift: "Swing Shift")
	AvailableDay.create(dow:"Friday", shift: "Grave Shift")
	AvailableDay.create(dow:"Saturday", shift: "Day Shift")
	AvailableDay.create(dow:"Saturday", shift: "Swing Shift")
	AvailableDay.create(dow:"Saturday", shift: "Grave Shift")
	AvailableDay.create(dow:"Sunday", shift: "Day Shift")
	AvailableDay.create(dow:"Sunday", shift: "Swing Shift")
	AvailableDay.create(dow:"Sunday", shift: "Grave Shift")


Station.destroy_all

	Station.create(name: "Lakewood Station", address: "5130 Clark Ave Lakewood, CA (562) 623-3500")
	Station.create(name: "Carson Station", address: "21356 S. Avalon Blvd. Carson, CA 90745 (310) 830-1123")
	Station.create(name: "Cerritos Station", address: "18135 Bloomfield Ave. Cerritos, CA 90703 (562) 860-0044")
	Station.create(name: "Compton Station", address: "301 S. Willowbrook Ave. Compton, CA 90220 (310) 605-6500")
	Station.create(name: "Norwalk Station", address: "12335 Civic Center Dr. Norwalk, CA 90650 (562) 863-8711")