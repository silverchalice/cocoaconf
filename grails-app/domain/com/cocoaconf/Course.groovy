package com.cocoaconf

class Course {

    static belongsTo = Term

    Speaker speaker
    TrainingType trainingType
  
    static constraints = {
    }
    
    String toString(){
        if (trainingType){
          trainingType?.title + ', by ' + speaker    
        } else {
            "New Course"
        }
        
    }
}
