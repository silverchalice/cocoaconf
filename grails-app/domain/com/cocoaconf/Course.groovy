package com.cocoaconf

class Course {

    Speaker speaker

    String title
    String description
    String prereq

    String toString(){
        "$title, by $speaker"
    }

    static constraints = {

        prereq nullable: true, blank: true

    }

    static mapping = {

        description type: "text"
        prereq type: "text"

    }
}
