package com.cocoaconf

class TextBit {
    String contents
    String description
    String name

    static constraints = {
        contents nullable: true, blank: true, maxSize: 1000000000
        description nullable: false, blank: false, maxSize: 10000
        name blank: false, nullable: false
    }

    static mapping = {
        contents type: "text"
    }
}
