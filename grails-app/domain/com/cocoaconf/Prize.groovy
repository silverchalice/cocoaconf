package com.cocoaconf

class Prize {

    String name
    String imageName
    String description
    Double priority = 99.0

    static constraints = {
        name()
        imageName()
        description maxSize: 5000
        priority()
    }
}
