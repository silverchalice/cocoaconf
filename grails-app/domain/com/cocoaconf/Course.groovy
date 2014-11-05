package com.cocoaconf

class Course {

    static belongsTo = Term

    Speaker speaker
    TrainingClass trainingClass

    String toString(){
        "${trainingClass.title}, by $speaker"
    }

    static constraints = {
    }

}
