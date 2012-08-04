package com.cocoaconf

class App {

    String name

    String description



    static belongsTo = [developer: User]

    static constraints = {
    }
}
