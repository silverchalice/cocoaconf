package com.cocoaconf

class SecurityFilters {

    def springSecurityService

    def filters = {
        temporaryPassword(controller:'login', invert: true) {
            before = {
                if(springSecurityService.isLoggedIn() && springSecurityService.currentUser.temporaryPassword == true){
                    flash.message = "You are using a temporary password. Please enter a new one."
                    redirect controller: "login", action: "change_password"
                    return false
                } else {
                    return true
                }
            }
        }
    }
}
