package com.cocoaconf

class TrainingType {

    String title
    String description
    String prereq

    String toString(){
        title
    }

    static constraints = {
        description maxSize:10000
        prereq nullable: true, blank: true, maxSize:10000
    }

}
