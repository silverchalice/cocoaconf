package com.cocoaconf

class FeedEntry {
    String title
    String link
    String body
    Date published
    Long speakerId

    static constraints = {
    }

    static mapping = {
        body type:"text"
    }

}
