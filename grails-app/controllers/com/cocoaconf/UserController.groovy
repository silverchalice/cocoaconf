package com.cocoaconf

import org.springframework.security.core.context.SecurityContextHolder as SCH

class UserController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def springSecurityService

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [userInstanceList: User.list(params), userInstanceTotal: User.count()]
    }

    def create = {
        def userInstance = new User()
        userInstance.properties = params
        return [userInstance: userInstance]
    }

    def pickSessions = {
        println "Entering UserController:pickSessions..."
        println params
        
        def user = User.findByUsername(springSecurityService.principal.username)
        if (!user.choice){
            
            println "saving user choice..."
            user.choice = new SessionChoice(params)
        }
        else {
            println "saving user choice..."
            user.choice.properties = params
        }
        if (!user.save()){
            user.errors.allErrors.each{println it}
        }
        flash.message = "Thank you for your help!"
        redirect(controller:'home', action:'schedule')
    }
    
    def importUsers = {
        if (User.findByUsername('sjohnson@theonion.com')){
            render "Import already run."
            return
        }
        def file = [
        "79734683   Dec 20, 2011    Sinchok         Chris           csinchok@theonion.com                   1.0 Super Early Bird Conference                                 62669953    PayPal Completed            350.0               0.0             9.74                    Attending       212 W Superior                  Suite 200                   CHICAGO             IL          60654       US              Friend                                                      Large           @chrissinchok       ",
        "79734685   Dec 20, 2011    Johnson         Sam             sjohnson@theonion.com                   1.0 Super Early Bird Conference                                 62669953    PayPal Completed            350.0               0.0             9.74                    Attending       212 W Superior                  Suite 200                   CHICAGO             IL          60654       US              Friend                                                      Large           @samdjohnson        ",
        "79940105   Dec 22, 2011    Khan            Taha            taha@thebasement.tv                     1.0 Super Early Bird Conference Plus Tutorial                   62826163    PayPal Completed            450.0               0.0             9.95                    Attending       8902 Otis Ave Suite 107B                                    Indianapolis        IN          46216       US              Twitter                                                     Medium          taha0Khan           ",
        "79940107   Dec 22, 2011    Werner          Kyle            kyle@thebasement.tv                     1.0 Super Early Bird Conference Plus Tutorial                   62826163    PayPal Completed            450.0               0.0             9.95                    Attending       8902 Otis Ave Suite 107B                                    Indianapolis        IN          46216       US              Twitter                                                     Medium          kylejwerner         ",
        "79958683   Dec 22, 2011    Regan           Joe             joe@modmobile.net                       1.0 Super Early Bird Conference                                 62841099    PayPal Completed            350.0               0.0             9.74                    Attending       3364 N Humboldt Blvd                                        Milwaukee           WI          53212       US                                                                          Medium          modmobile           ",
        "80306601   Dec 28, 2011    McCarron        Patrick         patrick@McCarron.com                    1.0 Super Early Bird Conference                                 63113453    PayPal Completed            350.0               0.0             9.74                    Attending       2233 Flagstone Lane                                         Carpentersville     IL          60110       US              Twitter                                                     2XL             mccarron            ",
        "80309279   Dec 28, 2011    Evans           Allan           lingoslinger@me.com                     1.0 Super Early Bird Conference                                 63115543    PayPal Completed            350.0               0.0             9.74                    Attending       3239 N Wilton Ave #1                                        Chicago             IL          60657       US              twitter (retweet)                                           X-Large         lingoslinger        ",
        "80312745   Dec 28, 2011    Jun             Terry           terry.jun@tmjdesign.com                 1.0 Super Early Bird Conference Plus Tutorial                   63118363    PayPal Completed            450.0               0.0             9.95                    Attending                                                                                       IL                      US              Friend                                                      X-Large         NONE                ",
        "80313813   Dec 28, 2011    Douglas         Aaron           astralbodies@gmail.com                  1.0 Super Early Bird Conference                                 63119163    PayPal Completed            350.0               0.0             9.74                    Attending       3454 S Kansas Ave                                           Milwaukee           WI          53207       US              Twitter                                                     2XL             astralbodies        ",
        "80314459   Dec 28, 2011    Kinney          David           david@pinkhop.com                       1.0 Super Early Bird Conference                                 63119673    PayPal Completed            350.0               0.0             9.74                    Attending       617 South Blvd #H                                           Oak Park            IL          60302-2967  US              @mccarron                                                   4XL             @dlkinney           ",
        "80321569   Dec 28, 2011    Ansari          Aijaz           j-eventbrite@junk.enoor.com             1.0 Super Early Bird Conference Plus Tutorial                   63125431    PayPal Completed            450.0               0.0             9.95                    Attending       417 2nd PL                                                  Glendale Heights    IL          60139       US              Twitter                                                     Small           _aijaz_             ",
        "80379517   Dec 28, 2011    Hunter          Jason           jhunter@servlets.com                    1.0 Super Early Bird Conference Plus Tutorial                   63171515    PayPal Completed            450.0               0.0             9.95                    Attending       20890 Arbeleche Ln                                          Saratoga            CA          95070       US              Dan Steinberg!                                              X-Large         hunterhacker        ",
        "80452515   Dec 29, 2011    Stehling        Brennan         brennan@smallsharptools.com             1.0 Super Early Bird Conference Plus Tutorial                   63227371    PayPal Completed            450.0               0.0             9.95                    Attending       2080 North Commerce Street      412                         Milwaukee           WI          53212       US              Another developer                                           Large           brennanMKE          ",
        "80812185   Dec 31, 2011    Henderson       Brian           brian.henderson@ymail.com               1.0 Super Early Bird Conference Plus Tutorial                   63489655    PayPal Completed            450.0               0.0             9.95                    Attending       21228 SE 29th St                                            Sammamish           WA          98075       US              alumni attendee, returning to get 2nd mug :)                Small           brian_henderson     ",
        "81007151   Jan 3, 2012     Caccavale       John            jcaccavale@mac.com                      1.0 Super Early Bird Conference                                 63639467    PayPal Completed            350.0               0.0             9.74                    Attending       1511 Watkins Ln Unit 208                                    Naperville          IL          60540       US              Blogs/Twitter                                               Medium          JohnCaccavale       ",
        "81188921   Jan 4, 2012     Norgren         Mark            m@marknorgren.com                       1.0 Super Early Bird Conference Plus Tutorial                   63784213    PayPal Completed            450.0               0.0             9.95                    Attending                                                                                                               US              Google                                                      Large           mrkdsys             ",
        "81315633   Jan 5, 2012     MacDonald       Trina           trina.macdonald@pearson.com             1.0 Super Early Bird Conference                                 63886997    PayPal Completed            350.0               0.0             9.74                    Attending                                                                                                   94550       US              Work                                                        Medium          @trinamac           ",
        "81517777   Jan 6, 2012     Zatelli         Anthony         azatelli@gmail.com                      1.0 Super Early Bird Conference                                 64049017    PayPal Completed            350.0               0.0             9.74                    Attending       4126 Roundtree Road                                         Richmond            VA          23294       US                                                                          X-Large         azatelli            ",
        "81519079   Jan 6, 2012     Etheredge       Justin          justin@etheredge.us                     1.0 Super Early Bird Conference Plus Tutorial                   64049975    PayPal Completed            450.0               0.0             9.95                    Attending       10211 Falconbridge Dr.                                      Richmond            VA          23238       US              Friend                                                      2XL             JustinEtheredge     ",
        "81532275   Jan 6, 2012     Thomson         Don             dthomson@wisc.edu                       1.0 Super Early Bird Conference Plus Tutorial                   64061015    PayPal Completed            450.0               0.0             9.95                    Attending       3542 Gregory St                                             Madison             WI          53715       US              Twitter                                                     Medium          madcitydon          ",
        "81670663   Jan 7, 2012     Narang          Robbie          hello@robbienarang.com                  1.0 Super Early Bird Conference                                 64171077    PayPal Completed            350.0               0.0             9.74                    Attending       340 Rim Road                                                Los Alamos          NM          87544       US              Twitter                                                     Medium          @robbienarang       ",
        "81673103   Jan 7, 2012     Zahm            Robert          robert_zahm@echelon.org                 1.0 Super Early Bird Conference                                 64173033    PayPal Completed            350.0               0.0             9.74                    Attending       100 W. Monroe                   Suite 2000                  Chicago             IL          60603       US                                                                          X-Large         @notapplicable      ",
        "81673105   Jan 7, 2012     Thompson        Eric            eric_thompson@echelon.org               1.0 Super Early Bird Conference                                 64173033    PayPal Completed            350.0               0.0             9.74                    Attending       100 W. Monroe                   Suite 2000                  Chicago             IL          60603       US                                                                          X-Large         @gamejunkie         ",
        "81705241   Jan 7, 2012     Mateja          Ethan           ethan.mateja@me.com                     1.0 Super Early Bird Conference Plus Tutorial                   64197839    PayPal Completed            450.0               0.0             9.95                    Attending       3479 Scarlet Rose                                           Schertz             TX          78154-3645  US              Twitter: Followed by Ray Wenderlich                         X-Large         stack_trace         ",
        "82369163   Jan 11, 2012    Willson         Sean            cocoaconf@wideasleep.com                1.0 Super Early Bird Conference                                 64726741    PayPal Completed            350.0               0.0             9.74                    Attending       5245 Benton Ave                                             Downers Grove       IL          60515       US              Twitter                                                     2XL             epicycle            ",
        "82683447   Jan 13, 2012    Andreakis       Dean            deanandreakis@gmail.com                 1.0 Super Early Bird Conference Plus Tutorial                   64978845    PayPal Completed            450.0               0.0             9.95                    Attending       550 Huntington Circle                                       Lake Villa          IL          60046       US              friend told me                                              2XL             @deanandreakis      ",
        "82687501   Jan 13, 2012    Vogel           Matthew         msv1971@yahoo.com                       1.0 Super Early Bird Conference Plus Tutorial                   64981945    PayPal Completed            450.0               0.0             9.95                    Attending       932 Napa Trl                                                Spring Grove        IL          60081       US              From a colleague                                            X-Large         @mattvogel42        ",
        "83514505   Jan 18, 2012    Haworth         Robert          robertchaworth@gmail.com                1.0 Early Bird Conference Plus Tutorial                         65644007    PayPal Completed            450.0               0.0             9.95                    Attending       3049 Maple Valley Dr            Apt 104                     Madison             WI          53719-4311  US              Friends/Teacher Eric Knapp                                  Medium          @robertchaworth     ",
        "83542159   Jan 18, 2012    Jarrett         Jim             jarrett-iphone@lypsinc.org              1.0 Early Bird Conference Plus Tutorial                         65664653    PayPal Completed            550.0               0.0             9.95                    Attending       4537 Onyx Lane                                              Madison             WI          53714       US              Twitter                                                     X-Large         @jrjarrett          ",
        "83586887   Jan 18, 2012    Knapp           Eric            eknapp@matcmadison.edu                  1.0 Early Bird Conference                                       65700575    PayPal Completed            300.0               0.0             8.49                    Attending       1305 Baskerville Ave.                                       Monona              WI          53716       US              Twitter and Brad Larson                                     X-Large         ejknapp             ",
        "83625555   Jan 18, 2012    Kapitan         Andrea          andrea.kapitan@gmail.com                1.0 Early Bird Conference                                       65731117    PayPal Completed            400.0               0.0             9.95                    Attending       3387                                                        Mc Farland          WI          53558       US              MATC iOS Coder List                                         Large           andreazk            ",
        "83680767   Jan 19, 2012    ZACHMAN         JULIE           julethief@gmail.com                     1.0 Early Bird Conference                                       65776383    PayPal Completed            300.0               0.0             8.49                    Attending       29 S. Hillside Terrace                                      Madison             WI          53705       US              Eric Knapp :)                                               3XL             julethief           ",
        "83723887   Jan 19, 2012    Wincek          Mike            wincek@loyolapress.com                  1.0 Early Bird Conference Plus Tutorial                         65809241    PayPal Completed            550.0               0.0             9.95                    Attending       2031 Maple Ave.                                             Northbrook          IL          60062       US              Blog                                                        X-Large         mikewincek          ",
        "84478479   Jan 24, 2012    Neustadt        Mark            mark.neustadt@tersosolutions.com        1.0 Early Bird Conference Plus Tutorial                         66406023    PayPal Completed            550.0               0.0             9.95                    Attending       5540 Research Park Drive                                    Fitchburg           WI          53711       US              colleague                                                   3XL             markdotnet          ",
        "84496559   Jan 24, 2012    Marks           Adam            marksfamily@gmail.com                   1.0 Early Bird Conference                                       66420807    PayPal Completed            400.0               0.0             9.95                    Attending       411 FOGG RD                                                 LESLIE              MI          49251       US              Twitter                                                     2XL             adammarks           ",
        "84555391   Jan 24, 2012    Waters          Jaymes          jaymes@bendyworks.com                   1.0 Early Bird Conference                                       66468669    PayPal Completed            400.0               0.0             9.95                    Attending       106 East Doty Street, Suite 210                             Madison             WI          53703       US                                                                          Large           JaymesWaters        ",
        "84555393   Jan 24, 2012    Grzesiak        Bradley         brad@bendyworks.com                     1.0 Early Bird Conference                                       66468669    PayPal Completed            400.0               0.0             9.95                    Attending       106 East Doty Street, Suite 210                             Madison             WI          53703       US              the twitters                                                Large           listrophy           ",
        "84585989   Jan 24, 2012    Smuga-Otto      Maciej          Maciek.Smuga-Otto@promega.com           1.0 Early Bird Conference                                       66493321    PayPal Completed            400.0               0.0             9.95                    Attending       2553 Commonwealth Ave.                                      Madison             WI          53711       US              Brad Larson :)                                              Medium          macieksmuga         ",
        "84772959   Jan 25, 2012    Fons            Derek           derek@farfromrest.com                   1.0 Early Bird Conference                                       66641633    PayPal Completed            400.0               0.0             9.95                    Attending       90 Elm Drive                                                Oakland             MI          48363       US                                                                          X-Large         farfromrest         ",
        "84945445   Jan 26, 2012    Allen           Jesse           jmallen7@gmail.com                      1.0 Early Bird Conference Plus Tutorial                         66774739    PayPal Completed            450.0               0.0             9.95                    Attending       909 County Road V                                           Marshall            WI          53559       US              Eric Knapp                                                  2XL             JesseMAllen         ",
        "84962711   Jan 26, 2012    DiPiazza        Tricia          tricia.dipiazza@gmail.com               1.0 Early Bird Conference                                       66787793    PayPal Completed            400.0               0.0             9.95                    Attending       1043 Jenifer St. Apt 2                                      Madison             WI          53703       US              other local iOS devs                                        Small           @TDiPiazza          ",
        "85025199   Jan 26, 2012    Groulx          David           david_groulx@me.com                     1.0 Early Bird Conference                                       66838583    PayPal Completed            400.0               0.0             9.95                    Attending       2943 Foxboro Lane                                           Holland             MI          49424       US              linked from West Michigan startup weekend                   Medium          dhgroulx            ",
        "85182309   Jan 27, 2012    Hill-Popper     Carl            chillpop@gmail.com                      1.0 Early Bird Conference                                       66963793    PayPal Completed            350.0               0.0             9.74                    Attending       2508 N Saint Louis Ave                                      Chicago             IL          60647       US                                                                          Large           n/a                 ",
        "85563743   Jan 30, 2012    Nierodzik       James           jnierodzik@responsys.com                1.0 Early Bird Conference Plus Tutorial                         67263461    PayPal Completed            550.0               0.0             9.95                    Attending       633 Cary Words Circle                                       Cary                IL          60013       US                                                                          X-Large         myndcraft           ",
        "85763183   Jan 31, 2012    LaMantia        Anthony         anthony@dysco.com                       1.0 Early Bird Conference Plus Tutorial                         67422155    PayPal Completed            550.0               0.0             9.95                    Attending       641 W. Lake St                  Suite 301                   Chicago             IL          60661       US                                                                          X-Large         nothankyou          ",
        "85947487   Jan 31, 2012    Jessup          Andrea          jessup.andrea@gmail.com                 1.0 Early Bird Conference Plus Tutorial                         67559693    PayPal Completed            450.0               0.0             9.95                    Attending       5471 Williamsburg Way           Apt 308                     Fitchburg           WI          53719       US              From my iOS instructor at Madison Area Technical College    Large           AndreaJessup        ",
        "86065231   Feb 1, 2012     Graves          Jason           jgraves@steadyrain.com                  1.0 Early Bird Conference                                       67654949    PayPal Completed            400.0               0.0             9.95                    Attending       716 Geyer Ave, Suite 300                                    St. Louis           MO          63104       US                                                                          Large           #jasongraves        ",
        "86455623   Feb 2, 2012     Umbright        Guy             gumbright@gmail.com                     1.0 Early Bird Conference                                       67948977    PayPal Completed            400.0               0.0             9.95                    Attending       25274 W. Elm Grove Dr.                                      Barrington          IL          60010       US              Website                                                     X-Large         gumbright           ",
        "86579253   Feb 3, 2012     Scott           Joshua          josh@resonantmedia.com                  1.0 Early Bird Conference Plus Tutorial                         68043985    Free Order                  0.0                 0.0             0.0                     Attending       228 Shelly Lane                                             Lindale             TX          75771       US              From a really great family!                                 2XL             @Joshua_Scott       ",
        "86674251   Feb 3, 2012     LaBonte         Luke            contact@lukelabonte.com                 1.0 Early Bird Conference Plus Tutorial                         68111813    PayPal Completed            400.0               0.0             9.95                    Attending       4417 Bellgrove Lane                                         Madison             WI          53704       US              Twitter                                                     4XL             lukelabonte         ",
        "86675053   Feb 3, 2012     LaFrance        William         admin@wjlafrance.net                    1.0 Early Bird Conference Plus Tutorial                         68112413    PayPal Completed            400.0               0.0             9.95                    Attending       4556 Bonnie Ave                                             Madison             WI          53718       US              Twitter                                                     Large           wjlafrance          ",
        "86814693   Feb 5, 2012     Smith           Linda           samegirldifferentday@yahoo.com          1.0 Early Bird Conference Plus Tutorial                         68214203    PayPal Completed            500.0               0.0             9.95                    Attending       1630 W. Summerdale #2                                       Chicago             IL          60640       US              COCOAHEADS                                                  Large           @datetracker        ",
        "87115837   Jan 4, 2012     Van Order       Jacob           jacob@sushigrass.com                    1.0 Super Early Bird Conference                                 63740905    PayPal Partially Refunded   350.0               0.0             0.0                     Attending                                                                                                                                                                                                                               ",
        "87382473   Feb 7, 2012     Forester        John            john.forester@mac.com                   1.0 Early Bird Conference                                       68658851    PayPal Completed            350.0               0.0             9.74                    Attending       2048 N. Western Ave. #1F                                    Chicago             IL          60647       US              CAWUG mailing list                                          Medium          johnforester        ",
        "87466305   Feb 8, 2012     Wolter          Sean            seanwolter@gmail.com                    1.0 Early Bird Conference                                       68726091    PayPal Completed            350.0               0.0             9.74                    Attending       3839 W Altgeld St               Unit 3                      Chicago             IL          60647       US              Chicago CocoaHeads / NSCoder                                Medium          seanwolter          ",
        "87534481   Feb 8, 2012     Silva           David           david@dmacon.com                        1.0 Early Bird Conference Plus Tutorial                         68777769    PayPal Completed            550.0               0.0             9.95                    Attending       465 White Oak Dr                                            Naperville          IL          60540       US              web                                                         X-Large         david_silva         ",
        "87538345   Feb 8, 2012     Hiatt           Jesse           jesse.hiatt@state.sd.us                 1.0 Early Bird Conference Plus Tutorial                         68780889    PayPal Completed            550.0               0.0             9.95                    Attending       500 E. Capitol                                              Pierre              SD          57501       US                                                                          X-Large         n/a                 ",
        "87572337   Feb 8, 2012     Bauer           Jon             jon@covelop.org                         1.0 Early Bird Conference                                       68807887    PayPal Completed            400.0               0.0             9.95                    Attending       220 W. 5th St. #503                                         Los Angeles         CA          90013       US              twitter                                                     X-Large         coveloper           ",
        "87592621   Feb 8, 2012     Benton          Jim             jim@autonomousmachine.com               1.0 Early Bird Conference Plus Tutorial                         68824111    PayPal Completed            550.0               0.0             9.95                    Attending       1724 W. Rascher Ave             Apt. 2                      Chicago             IL          60640       US                                                                          Medium          automach            ",
        "87607921   Feb 8, 2012     Witthawaskul    Weerasak        wee.witthawaskul@morningstar.com        1.0 Early Bird Conference                                       68835707    PayPal Completed            350.0               0.0             9.74                    Attending       1122 N CLARK ST 3804                                        Chicago             IL          60610       US              Colleague                                                   X-Large         _wee_               ",
        "87660153   Feb 8, 2012     Wang            Zhirong         wangzhirong57@gmail.com                 1.0 Early Bird Conference                                       68873281    PayPal Completed            350.0               0.0             9.74                    Attending       441 W Oakdale.                                              Chicago             IL          60657       US                                                                          Small           wangzhirong57       ",
        "87729007   Feb 9, 2012     Diedrick        Kyle            corporealshift@gmail.com                1.0 Early Bird Conference                                       68927495    PayPal Completed            300.0               0.0             8.49                    Attending                                                                                       IL                      US              MATC iOS Development                                        Medium          kdiedrick           ",
        "87825429   Feb 9, 2012     Pearson         TD              twnly@yahoo.com                         1.0 Early Bird Conference                                       69003523    PayPal Completed            300.0               0.0             8.49                    Attending       1311 Morrison St. Apt. 4                                    Madison             WI          53703       US                                                                          Large           twnly               ",
        "87836029   Feb 9, 2012     Mahar           Maria           mariamahar@earthlink.net                1.0 Early Bird Conference Plus Tutorial                         69011437    PayPal Completed            450.0               0.0             9.95                    Attending       P.O. Box 24835                                              Tempe               AZ          85285       US              internet search                                             Medium          MinecraftMom        ",
        "87841715   Feb 9, 2012     Garofalo        Philip          PhilG@vavatini.com                      1.0 Early Bird Conference                                       69015809    PayPal Completed            350.0               0.0             9.74                    Attending       3820 N. Osceola Ave.                                        Chicago             IL          60634       US              Chicago Mobile Mondays e-mail                               X-Large         pfg23               ",
        "87860579   Feb 9, 2012     Stier           Nathan Stier    nathan.stier@gmail.com                  1.0 Early Bird Conference Plus Tutorial                         69029451    PayPal Completed            450.0               0.0             9.95                    Attending       81 Lakewood Gardens Ln.                                     Madison             WI          53704       US              MATC iOS Class                                              2XL             TehNatha            ",
        "87860581   Feb 9, 2012     Stier           Susan           stier.js@gmail.com                      1.0 Early Bird Conference Plus Tutorial                         69029451    PayPal Completed            450.0               0.0             9.95                    Attending       6846 Elder Ln                                               Sun Prairie         WI          53590       US                                                                          X-Large         --                  ",
        "87927249   Feb 9, 2012     LaBonte         Lee             leelabonte@gmail.com                    1.0 Early Bird Conference Plus Tutorial                         69077041    PayPal Completed            450.0               0.0             9.95                    Attending       4417 Bellgrove Ln                                           Madison             WI          53704       US              My instructor Eric Knapp                                    Large           @LeeLaBonte         ",
        "88051877   Feb 10, 2012    Cook            Nate            natecook@gmail.com                      1.0 Early Bird Conference Plus Tutorial                         69174237    PayPal Completed            550.0               0.0             9.95                    Attending       5325 S. Harper Ave, #3                                      Chicago             IL          60615       US                                                                          Medium          nnnnnnnn            ",
        "88104667   Feb 10, 2012    Accola          Matthew         mraccola@yahoo.com                      1.0 Early Bird Conference                                       69214431    PayPal Completed            400.0               0.0             9.95                    Attending       3425 Swansee Ridge                                          Sun Prairie         WI          53590       US                                                                          Small           none                ",
        "88123025   Feb 10, 2012    Ozeran          Jonathan        jonathan@recsolu.com                    1.0 Early Bird Conference                                       69228125    PayPal Completed            350.0               0.0             9.74                    Attending                                                                                       IL                      US                                                                          Large           @recsolu            ",
        "88130209   Feb 10, 2012    Luby            Bryan           bryan@bryanluby.com                     1.0 Early Bird Conference Plus Tutorial                         69233569    PayPal Completed            440.0               0.0             9.95                    Attending       470 W Mahogany Ct               Unit 201                    Palatine            IL          60067       US              Build And Analyze Podcast - 5by5                            Large           BryanLuby           ",
        "88159429   Feb 10, 2012    haberman        michael         haberman@illinois.edu                   1.0 Early Bird Conference                                       69256113    PayPal Completed            300.0               0.0             8.49                    Attending       1001 oak creek circle                                       mahomet             IL          61853       US              twitter                                                     X-Large         moremike            ",
        "88424271   Feb 13, 2012    Fort            Carter          carter@outtolunchproductions.com        1.0 Conference                                                  69460883    PayPal Completed            400.0               0.0             9.95                    Attending                                                                                       IL                      US              Build and Analyze                                           Large           I don't use Twitter.",
        "88572263   Feb 13, 2012    Roberts         Frederick       rick.roberts@parivedasolutions.com      1.0 Conference                                                  69579555    PayPal Completed            500.0               0.0             9.95                    Attending       988 Sheridan Cir                                            Naperville          IL          60563       US                                                                          X-Large         @therickroberts     ",
        "88572265   Feb 13, 2012    Lisonbee        Micah           micah.lisonbee@parivedasolutions.com    1.0 Conference                                                  69579555    PayPal Completed            500.0               0.0             9.95                    Attending       608 Waterview Court                                         Naperville          IL          60563       US                                                                          Medium          @micahlisonbee      ",
        "88676449   Feb 14, 2012    Tran            John            jtran@uwsa.edu                          1.0 Conference Plus Tutorial                                    69661319    PayPal Completed            650.0               0.0             9.95                    Attending       780 Regent Street Suite 246                                 Madison             WI          53715       US                                                                          Large           jttran74            ",
        "88713357   Feb 14, 2012    ODell           Jeffrey         jeffrey.odell@gmail.com                 1.0 Conference Plus Tutorial                                    69690735    PayPal Completed            700.0               0.0             9.95                    Attending       4655 N. Winchester Ave #1N      4655 N. Winchester Ave #1N  Chicago             IL          60640       US              twitter                                                     Medium          umsondo             ",
        "89343863   Feb 16, 2012    Ahmed           Sohail          sohail@appstronomy.com                  1.0 Conference                                                  70157331    PayPal Completed            400.0               0.0             9.95                    Attending       6035 Bidwell Trail              Unit 1                      Mississauga         ON          L5V 3C8     CA              Twitter - retweets by Bill Dudney; mentions on NSBrief      Medium          idStar              ",
        "89539175   Feb 17, 2012    Benson          John            johnbenson@gmail.com                    1.0 Conference Plus Tutorial                                    70311881    PayPal Completed            560.0               0.0             9.95                    Attending       1523 Stonefield Dr                                          DeKalb              IL          60115       US              5BY5 - Build and Analyze                                    Medium          johnbenson          ",
        "89810759   Feb 19, 2012    Middlin         Paul            middlinp@gmail.com                      1.0 Conference Plus Tutorial                                    70524337    PayPal Completed            700.0               0.0             9.95                    Attending       5791 Horstmeyer Rd                                          Lansing             MI          48911       US              wom                                                         Medium          middlinp            ",
        "90585927   Feb 22, 2012    Ivaniv          Nazar           nivaniv@gmail.com                       1.0 Conference                                                  71126895    PayPal Completed            500.0               0.0             9.95                    Attending       66-68 E 3RD ST APT 12                                       New York            NY          10003       US              Friend                                                      Large           inazarv             ",
        "90729155   Feb 22, 2012    Norman          Mark            mark.norman@truedevelopment.com         1.0 Conference                                                  71203423    PayPal Completed            500.0               0.0             9.95                    Attending       43W183 Chateaugay Ln                                        Elburn              IL          60119       US              5by5 Poscast                                                2XL             @truedevelopment    ",
        "90733287   Feb 22, 2012    Rios            Sean            Seanrios@gmail.com                      1.0 Conference                                                  71206745    PayPal Completed            500.0               0.0             9.95                    Attending                                                                                       IL                      US                                                                          Large           Seanrios            ",
        "90781045   Feb 23, 2012    Scoz            Eduardo         eduardoscoz@gmail.com                   1.0 Conference                                                  71246283    Free Order                  0.0                 0.0             0.0                     Attending       1400 S Michigan Ave             APT 2209                    Chicago             IL          60605       US              Chicago Community!                                          Large           escoz               ",
        "90850007   Feb 23, 2012    Moser           Steve           service@stevemoser.org                  1.0 Conference                                                  71293969    PayPal Completed            500.0               0.0             9.95                    Attending       6425 Cameron Forest LN APT 3C                               Charlotte           NC          28210       US              the twitters                                                Medium          SteveMoser          ",
        "90984987   Feb 23, 2012    Olah-Reiken     Howard          howard@preferredapp.com                 1.0 Conference                                                  71401811    PayPal Completed            300.0               0.0             8.49                    Attending       163 11th Street                                             Hoboken             NJ          07030       US              Email                                                       Large           HowardOR            ",
        "91296907   Feb 24, 2012    Demyanovich     Craig           cdemyanovich@gmail.com                  1.0 Conference                                                  71654555    Free Order                  0.0                 0.0             0.0                     Attending       773 Cherry Creek Dr                                         Grayslake           IL          60030-3359  US              Colleague is a speaker                                      Large           demmer12            "]
        
        def attendeeRole = Role.findByAuthority('ROLE_ATTENDEE')
        def records = []
        file.each{line ->
            def data = [:]
            data.lastName = line[30..45].trim()
            data.firstName = line[46..60].trim()
            data.email = line[62..100].trim()
            data.username = line[62..100].trim()
            data.city = line[361..380].trim()
            data.state = line[381..382].trim()
            data.zip = line[395..404].trim()
            data.enabled = true
            data.accountExpired = false
            data.accountLocked = false
            data.passwordExpired = false
            def user = new User(data)
            user.password = springSecurityService.encodePassword("cocoaconf")
            if (!user.save())
                user.errors.allErrors.each{println it}
            else
                UserRole.create user, attendeeRole
        }
        render "There are now ${User.count()} users!"
    }
    
    def changePassword = {  
    }
    
    def savePassword = {
        def user = User.findByUsername(springSecurityService.principal.username)
        if (springSecurityService.encodePassword(params.oldpassword) == user.password){
            if (params.password == params.password2){
                user.password = springSecurityService.encodePassword(params.password)
                if (user.save()){
                    SCH.clearContext()
                    flash.message = 'Your password has been changed.  Please login with new password.'
                    redirect(controller:'login', action:'auth')
                }
                else{
                    println "ERROR saving password change for ${user?.username}!!!"
                    user.errors.allErrors.each{println it}
                    redirect(controller:'home', action:'announcement')
                }
            }
            else{
                flash.message = "New passwords do not match"
                render(view:'changePassword')
            }
        }
        else{
            flash.message = "Current password is incorrect."
            render(view:'changePassword')
        }
    }
    
    def save = {
        params.password = springSecurityService.encodePassword("cocoaconf")
        def userInstance = new User(params)
        def attendeeRole = Role.findByAuthority('ROLE_ATTENDEE')
        if (userInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'user.label', default: 'User'), userInstance.id])}"
            UserRole.create userInstance, attendeeRole
            redirect(action: "show", id: userInstance.id)
        }
        else {
            render(view: "create", model: [userInstance: userInstance])
        }
    }

    def show = {
        def userInstance = User.get(params.id)
        if (!userInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), params.id])}"
            redirect(action: "list")
        }
        else {
            [userInstance: userInstance]
        }
    }

    def edit = {
        def userInstance = User.get(params.id)
        if (!userInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [userInstance: userInstance]
        }
    }

    def update = {
        def userInstance = User.get(params.id)
        if (userInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (userInstance.version > version) {
                    
                    userInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'user.label', default: 'User')] as Object[], "Another user has updated this User while you were editing")
                    render(view: "edit", model: [userInstance: userInstance])
                    return
                }
            }
            userInstance.properties = params
            if (!userInstance.hasErrors() && userInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'user.label', default: 'User'), userInstance.id])}"
                redirect(action: "show", id: userInstance.id)
            }
            else {
                render(view: "edit", model: [userInstance: userInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def userInstance = User.get(params.id)
        if (userInstance) {
            try {
                userInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'user.label', default: 'User'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'user.label', default: 'User'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), params.id])}"
            redirect(action: "list")
        }
    }
}
