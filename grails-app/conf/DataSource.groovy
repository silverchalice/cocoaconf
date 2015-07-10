dataSource {
    pooled = true
    driverClassName = "org.hsqldb.jdbcDriver"
    username = "sa"
    password = ""
}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = true
    cache.provider_class = 'net.sf.ehcache.hibernate.EhCacheProvider'
}
// environment specific settings
environments {
    development {
        dataSource {
            pooled = true
   		    driverClassName = "com.mysql.jdbc.Driver"
			username = "cocoaconf"
			password = "cc5551212"
			dbCreate = "update"


            //url = "jdbc:mysql://localhost:3306/cocoaDb"
            url = "jdbc:mysql://66.116.97.250:3306/cocoaDb"
            properties {
				validationQuery="select 1"
				testWhileIdle=true
				timeBetweenEvictionRunsMillis=60000
			}

        }
    }
    test {
        dataSource {
            pooled = true
   		    driverClassName = "com.mysql.jdbc.Driver"
			username = "cocoaconf"
			password = "cc5551212"
			dbCreate = "update"
            url = "jdbc:mysql://66.116.97.250:3306/cocoaDb"
            properties {
				validationQuery="select 1"
				testWhileIdle=true
				timeBetweenEvictionRunsMillis=60000
			}

        }
    }
    production {
        dataSource {
            pooled = true
   		    driverClassName = "com.mysql.jdbc.Driver"
			username = "cocoaconf"
			password = "cc5551212"
			dbCreate = "update"
            url = "jdbc:mysql://localhost:3306/cocoaDb"
            properties {
				validationQuery="select 1"
				testWhileIdle=true
				timeBetweenEvictionRunsMillis=60000
			}

        }
    }
}
