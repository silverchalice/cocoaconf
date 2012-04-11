package com.cocoaconf

class ScheduleService {

    def loadScheduleMap(conf) {
	    def schedule = []
        def days = conf.sessions.sort{it.day}.groupBy{it.day}
        days.each{day, dailySessions ->
	        def slots = dailySessions.sort{it.slot}.groupBy{it.slot}
	        schedule << [day:day, slots:slots]
	    }
	    return schedule
    }
}
