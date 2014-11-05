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

    String toString() {
        title
    }

    static constraints = {

        courses nullable: true
        venue nullable: true

    }

    static mapping = {

        description type: "text"
        registrationBlurb type: "text"

    }
}
