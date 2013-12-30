package com.cocoaconf

class RandomizationalService {

    def randomUpcomingSpeakers(Integer count) {
        def conferences = Conference.upcoming.list()
        println "in randomUpcomingSpeakers(), and the conferences are $conferences"
        def speakers = conferences.collect { it.speakers }.unique()
        println "in randomUpcomingSpeakers(), and the speakers are $speakers"

        Collections.shuffle(speakers)
        return speakers.take(count)
    }

    def randomUpcomingPresentations() {
        def sessions = Conference.upcoming.collect { it.sessions }.flatten()
        Collections.shuffle(sessions)
        def presentations = sessions.collect { it.presentation }
        def s1 = Speaker.findByFirstName("TBA")
        def s2 = Speaker.findByFirstName("Mystery")
        return presentations.findAll { it.speaker.id != s1.id && it.speaker.id != s2.id && it.title != "TBA" }
    }

}
