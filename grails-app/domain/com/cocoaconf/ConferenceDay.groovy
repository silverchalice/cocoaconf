package com.cocoaconf

class ConferenceDay {
    String name
    static belongsTo = [conference:Conference]
    String toString(){name}
}

