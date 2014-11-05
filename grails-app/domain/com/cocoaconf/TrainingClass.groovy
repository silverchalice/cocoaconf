package com.cocoaconf

class TrainingClass {

    String title
    String description
    String prereq

    static constraints = {

        prereq nullable: true, blank: true

    }

    static mapping = {

        description type: "text"
        prereq type: "text"

    }

}
