import grails.plugins.springsecurity.SecurityConfigType

// locations to search for config files that get merged into the main config
// config files can either be Java properties files or ConfigSlurper scripts

// grails.config.locations = [ "classpath:${appName}-config.properties",
//                             "classpath:${appName}-config.groovy",
//                             "file:${userHome}/.grails/${appName}-config.properties",
//                             "file:${userHome}/.grails/${appName}-config.groovy"]

// if(System.properties["${appName}.config.location"]) {
//    grails.config.locations << "file:" + System.properties["${appName}.config.location"]
// }

grails.project.groupId = appName // change this to alter the default package name and Maven publishing destination
grails.mime.file.extensions = true // enables the parsing of file extensions from URLs into the request format
grails.mime.use.accept.header = false
grails.mime.types = [ html: ['text/html','application/xhtml+xml'],
                      xml: ['text/xml', 'application/xml'],
                      text: 'text/plain',
                      js: 'text/javascript',
                      rss: 'application/rss+xml',
                      atom: 'application/atom+xml',
                      css: 'text/css',
                      csv: 'text/csv',
                      all: '*/*',
                      json: ['application/json','text/json'],
                      form: 'application/x-www-form-urlencoded',
                      multipartForm: 'multipart/form-data'
                    ]

// URL Mapping Cache Max Size, defaults to 5000
//grails.urlmapping.cache.maxsize = 1000

// The default codec used to encode data with ${}
grails.views.default.codec = "none" // none, html, base64
grails.views.gsp.encoding = "UTF-8"
grails.converters.encoding = "UTF-8"
// enable Sitemesh preprocessing of GSP pages
grails.views.gsp.sitemesh.preprocess = true
// scaffolding templates configuration
grails.scaffolding.templates.domainSuffix = 'Instance'

// Set to false to use the new Grails 1.2 JSONBuilder in the render method
grails.json.legacy.builder = false
// enabled native2ascii conversion of i18n properties files
grails.enable.native2ascii = true
// whether to install the java.util.logging bridge for sl4j. Disable for AppEngine!
grails.logging.jul.usebridge = true
// packages to include in Spring bean scanning
grails.spring.bean.packages = []

// request parameters to mask when logging exceptions
grails.exceptionresolver.params.exclude = ['password']

grails.app.context = "/"

// set per-environment serverURL stem for creating absolute links
environments {
    production {
        grails.serverURL = "http://cocoaconf.com"
    }
    development {
        grails.serverURL = "http://localhost:8080"
    }
    test {
        grails.serverURL = "http://localhost:8080"
    }

}

grails.plugins.springsecurity.securityConfigType = SecurityConfigType.InterceptUrlMap
grails.plugins.springsecurity.interceptUrlMap = [

    '/':                                                     ['IS_AUTHENTICATED_ANONYMOUSLY'],
    '/images/**':                                            ['IS_AUTHENTICATED_ANONYMOUSLY'],
'/interest/saveInterest':                                    ['IS_AUTHENTICATED_ANONYMOUSLY'],
'/interest/saveInterest/*':                                  ['IS_AUTHENTICATED_ANONYMOUSLY'],
    '/css/**':                                               ['IS_AUTHENTICATED_ANONYMOUSLY'],
    '/js/**':                                                ['IS_AUTHENTICATED_ANONYMOUSLY'],
    '/slides/**':                                            ['IS_AUTHENTICATED_ANONYMOUSLY'],
    '/slides/chicago-2012/**':                               ['IS_AUTHENTICATED_ANONYMOUSLY'],
    '/js/jquery**':                                          ['IS_AUTHENTICATED_ANONYMOUSLY'],
    '/plugins/**':                                           ['IS_AUTHENTICATED_ANONYMOUSLY'],
    '/login/*':                                              ['IS_AUTHENTICATED_ANONYMOUSLY'],
    '/logout/*':                                             ['IS_AUTHENTICATED_ANONYMOUSLY'],
    '/interest/register':                                    ['IS_AUTHENTICATED_ANONYMOUSLY'],
    '/home/announcement':                                    ['IS_AUTHENTICATED_ANONYMOUSLY'],
    '/home':                                                 ['IS_AUTHENTICATED_ANONYMOUSLY'],
    '/home/*':                                               ['IS_AUTHENTICATED_ANONYMOUSLY'],
    '/home.':                                                ['IS_AUTHENTICATED_ANONYMOUSLY'],
    '/home./*':                                              ['IS_AUTHENTICATED_ANONYMOUSLY'],
    '/chicago_slides':                                       ['IS_AUTHENTICATED_ANONYMOUSLY'],
    '/home/**':                                              ['IS_AUTHENTICATED_ANONYMOUSLY'],
    '/**/home':                                              ['IS_AUTHENTICATED_ANONYMOUSLY'],
    '/**/home.':                                             ['IS_AUTHENTICATED_ANONYMOUSLY'],
    '/**/speakers':                                          ['IS_AUTHENTICATED_ANONYMOUSLY'],
    '/**/prizes':                                            ['IS_AUTHENTICATED_ANONYMOUSLY'],
    '/prize/prizes':                                         ['IS_AUTHENTICATED_ANONYMOUSLY'],
    '/prize/prizes/**':                                      ['IS_AUTHENTICATED_ANONYMOUSLY'],
    '/**/sessions':                                          ['IS_AUTHENTICATED_ANONYMOUSLY'],
    '/**/session/**':                                        ['IS_AUTHENTICATED_ANONYMOUSLY'],
    '/**/schedule':                                          ['IS_AUTHENTICATED_ANONYMOUSLY'],
    '/**/venue':                                             ['IS_AUTHENTICATED_ANONYMOUSLY'],
    '/**/partners':                                          ['IS_AUTHENTICATED_ANONYMOUSLY'],
    '/**/register':                                          ['IS_AUTHENTICATED_ANONYMOUSLY'],
    '/**/slides':                                            ['IS_AUTHENTICATED_ANONYMOUSLY'],
    '/**/pickSessions':                                      ['IS_AUTHENTICATED_ANONYMOUSLY'],
    '/about':                                                ['IS_AUTHENTICATED_ANONYMOUSLY'],
    '/venue':                                                ['IS_AUTHENTICATED_ANONYMOUSLY'],
    '/conference/speakerDetails':                            ['IS_AUTHENTICATED_ANONYMOUSLY'],
    '/conference/speakerDetails/**':                         ['IS_AUTHENTICATED_ANONYMOUSLY'],
    '/conference/sessionDetails':                            ['IS_AUTHENTICATED_ANONYMOUSLY'],
    '/conference/sessionDetails/**':                         ['IS_AUTHENTICATED_ANONYMOUSLY'],
    '/conference/schedule':                                  ['IS_AUTHENTICATED_ANONYMOUSLY'],
    '/conference/schedule/**':                               ['IS_AUTHENTICATED_ANONYMOUSLY'],
    '/mugshots':                                             ['IS_AUTHENTICATED_ANONYMOUSLY'],
    '/mugShot/list':                                         ['IS_AUTHENTICATED_ANONYMOUSLY'],
    '/next':                                                 ['IS_AUTHENTICATED_ANONYMOUSLY'],
    '/register':                                             ['IS_AUTHENTICATED_ANONYMOUSLY'],
    '/sessions':                                             ['IS_AUTHENTICATED_ANONYMOUSLY'],
    '/conf/**':                                              ['IS_AUTHENTICATED_ANONYMOUSLY'],
    '/speakers':                                             ['IS_AUTHENTICATED_ANONYMOUSLY'],
    '/profile/**':                                           ['IS_AUTHENTICATED_ANONYMOUSLY'],
    '/schedule':                                             ['IS_AUTHENTICATED_ANONYMOUSLY'],
    '/schedule/raleigh':                                     ['IS_AUTHENTICATED_ANONYMOUSLY'],
    '/schedule/columbus':                                    ['IS_AUTHENTICATED_ANONYMOUSLY'],
    '/session/details/*':                                    ['IS_AUTHENTICATED_ANONYMOUSLY'],
    '/speaker/details/*':                                    ['IS_AUTHENTICATED_ANONYMOUSLY'],
    '/session/sessions':                                     ['IS_AUTHENTICATED_ANONYMOUSLY'],
    '/speaker/viewDetails/*':                                ['IS_AUTHENTICATED_ANONYMOUSLY'],
    '/locationRequest/saveRequest':                          ['IS_AUTHENTICATED_ANONYMOUSLY'],
    '/locationRequest/saveRequest/**':                       ['IS_AUTHENTICATED_ANONYMOUSLY'],
    '/team':                                                 ['IS_AUTHENTICATED_ANONYMOUSLY'],
    '/roundup':                                              ['IS_AUTHENTICATED_ANONYMOUSLY'],
    '/blog/**':                                              ['IS_AUTHENTICATED_ANONYMOUSLY'],
    '/slides':                                               ['IS_AUTHENTICATED_ANONYMOUSLY'],
    '/feed/**':                                              ['IS_AUTHENTICATED_ANONYMOUSLY'],
    '/feed':                                                 ['IS_AUTHENTICATED_ANONYMOUSLY'],
    '/home/partners':                                        ['IS_AUTHENTICATED_ANONYMOUSLY'],
    '/partners':                                             ['IS_AUTHENTICATED_ANONYMOUSLY'],
    '/home/testFeeds':                                       ['IS_AUTHENTICATED_ANONYMOUSLY'],
    '/speaker/**':                                           ['ROLE_SPEAKER', 'ROLE_ADMIN'],
    '/user/**':                                              ['ROLE_SPEAKER', 'ROLE_ADMIN'],
    '/user/pickSessions':                     ['ROLE_SPEAKER', 'ROLE_ADMIN', 'ROLE_ATTENDEE'],
    '/user/changePassword':                   ['ROLE_SPEAKER', 'ROLE_ADMIN', 'ROLE_ATTENDEE'],
    '/user/savePassword':                     ['ROLE_SPEAKER', 'ROLE_ADMIN', 'ROLE_ATTENDEE'],
    '/session/download_slides/**':            ['ROLE_SPEAKER', 'ROLE_ADMIN', 'ROLE_ATTENDEE'],
    '/conference/**':                                                          ['ROLE_ADMIN'],
    '/venue/**':                                                               ['ROLE_ADMIN'],
    '/blogLink/**':                                                            ['ROLE_ADMIN'],
    '/presentation/*':                                         ['ROLE_SPEAKER', 'ROLE_ADMIN'],
    '/session/**':                                                             ['ROLE_ADMIN'],
    '/locationRequest/*':                                                      ['ROLE_ADMIN'],
    '/interest/*':                                                             ['ROLE_ADMIN'],
    '/**':                                                         ['IS_AUTHENTICATED_FULLY']
]


// Added by the Spring Security Core plugin:

grails.plugins.springsecurity.userLookup.userDomainClassName = 'com.cocoaconf.User'
grails.plugins.springsecurity.userLookup.authorityJoinClassName = 'com.cocoaconf.UserRole'
grails.plugins.springsecurity.authority.className = 'com.cocoaconf.Role'

// log4j configuration
log4j = {
    // Example of changing the log pattern for the default console
    // appender:
    //
    //appenders {
    //    console name:'stdout', layout:pattern(conversionPattern: '%c{2} %m%n')
    //}

    error  'org.codehaus.groovy.grails.web.servlet',  //  controllers
           'org.codehaus.groovy.grails.web.pages', //  GSP
           'org.codehaus.groovy.grails.web.sitemesh', //  layouts
           'org.codehaus.groovy.grails.web.mapping.filter', // URL mapping
           'org.codehaus.groovy.grails.web.mapping', // URL mapping
           'org.codehaus.groovy.grails.commons', // core / classloading
           'org.codehaus.groovy.grails.plugins', // plugins
           'org.codehaus.groovy.grails.orm.hibernate', // hibernate integration
           'org.springframework',
           'org.hibernate',
           'net.sf.ehcache.hibernate'

    warn   'org.mortbay.log'
}
