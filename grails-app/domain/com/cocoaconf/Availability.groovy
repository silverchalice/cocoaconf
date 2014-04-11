package com.cocoaconf

class Availability {
	Conference Conference
	User user
	Speaker speaker
	String available
	Integer numberOfTalks
	Boolean travelHelp
	Integer hotelNights=0
	String comments
	Boolean confirmed = false

    def beforeValidate() {

      if(numberOfTalks != null){
        numberOfTalks = numberOfTalks?.isNumber() ? numberOfTalks : 0
      } else {
        numberOfTalks = 0
      }

      if(hotelNights != null){
        hotelNights = hotelNights?.isNumber() ? hotelNights : 0
      } else {
        hotelNights = 0
      }

    }

    static constraints = {
    	user nullable: true
    	available inList:["Yes", "No", "Maybe"]
    	comments nullable:true, maxSize:10000
    }
}
