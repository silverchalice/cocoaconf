package com.cocoaconf

class Course {

    static belongsTo = Term

    Speaker speaker
    TrainingType trainingType
  
    static constraints = {
    }
    
    String toString(){
        trainingType.title + ', by ' + speaker
    }
}
