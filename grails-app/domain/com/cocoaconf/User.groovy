package com.cocoaconf


class User {

	String username
	String password
	String email
	String firstName
	String lastName
	String street
	String city
	String state
	String zip
	boolean enabled
	boolean accountExpired
	boolean accountLocked
	boolean passwordExpired
	SessionChoice choice
	
	static constraints = {
		username blank: false, unique: true
		password blank: false
        choice nullable: true
		street nullable:true
		city nullable:true
		state nullable:true
		zip nullable:true
		choice nullable:true
		
	}

	static mapping = {
		password column: '`password`'
	}

	Set<Role> getAuthorities() {
		UserRole.findAllByUser(this).collect { it.role } as Set
	}
}
