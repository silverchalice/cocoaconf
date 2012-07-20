package com.cocoaconf

import java.text.SimpleDateFormat

class DateTagLib {
    public static final String INCOMING_DATE_FORMAT = "yyyy-MM-dd hh:mm:ss"
    public static final String ATOM_DATE_FORMAT = "yyyy-MM-dd'T'HH:mm:ss'-07:00'"
    
    def atomDate = { attrs, body ->
        def b = attrs.body ?: body()
        def d = new SimpleDateFormat(INCOMING_DATE_FORMAT).parse(b.toString())
        out << new SimpleDateFormat(ATOM_DATE_FORMAT).format(d)
    }
}
