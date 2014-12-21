import com.cocoaconf.*

def file = new File("/Users/ebenezer/Desktop/Yosemite-att-2.txt")
def s = ctx.getBean("springSecurityService")
file.splitEachLine(",") { att ->
    if(!User.findByUsername(att[2])){
        new User(username: att[2], password: s.encodePassword("cocoaconf"), email: att[2], enabled: true, accountExpired: false, accountLocked: false, passwordExpired: false).save(failOnError:true)
    }
}