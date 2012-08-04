package com.cocoaconf

class Prize {

    String name
    String imageName
    String description
    Boolean active
    Double priority = 99.0

    static hasMany = [conferences : Conference]
    static belongsTo = Conference

    static constraints = {
        name()
        imageName()
        description maxSize: 5000
        active()
        priority()
    }
}
