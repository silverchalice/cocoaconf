package com.cocoaconf

class Term {

    static hasMany = [courses : Course]

    Venue venue

    Boolean isActive
    Date startDate
    Date endDate
    String title
    String slug
    String description
    String registrationBlurb
    String messageText

    String toString() {
        title
    }

    static constraints = {

        courses nullable: true
        venue nullable: true
        registrationBlurb maxSize: 5000000
        messageText nullable: true, blank: true, maxSize: 5000

    }

    static mapping = {

        description type: "text"
        registrationBlurb type: "text"

    }
}
