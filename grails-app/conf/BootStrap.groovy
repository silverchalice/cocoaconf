import com.cocoaconf.*

class BootStrap {
    def springSecurityService

    def init = { servletContext ->
	    if (HomePageBlurb.count() == 0){
			def blurb = new HomePageBlurb(active:true, priority:2)
			blurb.blurb = "<p>CocoaConf is a technical conference for Apple developers, pure and simple. We bring together top-notch developers, authors, and trainers, in a venue that is designed to maximize learning, and our attendance caps mean that it&#8217;s easy for you to get time with speakers and other attendees. With three concurrent tracks, you&#8217;re sure to find something of interest throughout each day. Throw in some relevant and entertaining keynotes and panels, and you have the makings of an awesome weekend!</p><p>At CocoaConf, we try hard to keep the focus on the tools and technology that we all have in common. This helps us to provide an environment where everyone feels welcome. If you develop apps for Apple devices &#8212; or if you would <em>like</em> to develop apps for Apple devices &#8212; then CocoaConf is the conference for you!  Join us for one of our upcoming events and you&#8217;ll see what we mean.</p>"
			blurb.save()
			blurb = new HomePageBlurb(active:true, priority:1)
			blurb.blurb = "<p>Well, <a href='http://cocoaconf.com/home/droidconf'>that was fun</a>, but now it&#8217;s time to end all the foolishness and get back to work preparing for the two remaining events in the <a href='http://cocoaconf.com/blog/2013-spring-tour'>CocoaConf Spring Tour</a>: <a href='http://cocoaconf.com/dallas-2013/home'>Dallas</a> and <a href='http://cocoaconf.com/sanjose-2013/home'>San Jose</a>.  We are so grateful to all of the awesome speakers that will be coming out to share their knowledge, experience, and inspiration with all of us. We hope to see you at at one of these two or at one of our fall events (stay tuned for dates and locations).</p>"
		}
    }
    def destroy = {
    }
}
