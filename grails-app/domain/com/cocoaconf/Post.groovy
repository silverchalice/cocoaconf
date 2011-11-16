package com.cocoaconf

class Post {

    String title
    Date dateCreated
    Date lastUpdated
    String body
    //static hasMany = [tags: Tag]
    String postedBy
    String postedByLink
    String slug

    static constraints = {
        postedBy blank:true, nullable:true
        postedByLink blank:true, nullable:true
        slug unique:true
    }

    static mapping = {
        body type:'text'
        sort 'dateCreated':'desc'
    } 

}
