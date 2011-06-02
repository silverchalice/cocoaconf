package com.cocoaconf

class Interest {

    String email
    String location

    Boolean needHotel = false

    static constraints = {
        email email: true, nullable:true
        location nullable: true
        needHotel nullable: true
    }
}
