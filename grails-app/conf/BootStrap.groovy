import com.cocoaconf.User
import com.cocoaconf.Role
import com.cocoaconf.UserRole

class BootStrap {

    def springSecurityService

    def init = { servletContext ->
	    def userRole = Role.findByAuthority('ROLE_USER') ?: new Role(authority: 'ROLE_USER').save(failOnError: true)
		def adminRole = Role.findByAuthority('ROLE_ADMIN') ?: new Role(authority: 'ROLE_ADMIN').save(failOnError: true)
	    if(!User.findByUsername("admin")){
		    def admin = new User(username:"admin", password:springSecurityService.encodePassword("admin"), email: "admin@cocoaconf.com", firstName: "Admin", lastName: "Cocoaconf", street: "123 Main Street", city: "City", state: "ST", zip:"53901", enabled:true, accountExpired:false, accountLocked:false, passwordExpired:false).save(failOnError:true)
		    UserRole.create admin, adminRole
		}
    }
    def destroy = {
    }
}
