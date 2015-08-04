package com.cocoaconf

class Term {

    static hasMany = [courses : Course]

    Venue venue

    Boolean isActive
    Date startDate
    Date endDate
    String title
    String subtitle
    String slug
    String description
    String registrationBlurb
    String messageText

    String toString() {
        title
    }

    static constraints = {

        courses nullable: true
        subtitle nullable: true, blank: true
        venue nullable: true
        description maxSize: 5000000
        registrationBlurb maxSize: 5000000
        messageText nullable: true, blank: true, maxSize: 5000

    }
}
