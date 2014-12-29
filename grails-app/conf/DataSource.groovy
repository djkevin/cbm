hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = true
    cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory' // Hibernate 3
//    cache.region.factory_class = 'org.hibernate.cache.ehcache.EhCacheRegionFactory' // Hibernate 4
  /*  show_sql = true
    format_sql=true
    use_sql_comments=true*/
}

// environment specific settings
environments {
    development {
        // See cbm-config.groovy
    }

    test {
        dataSource {
            dbCreate = "update" // one of 'create', 'create-drop', 'update', 'validate', ''
            url = "jdbc:h2:mem:testDb"
            pooled = true
            jmxExport = true
            driverClassName = "org.h2.Driver"
            username = "sa"
            password = ""
        }
    }

    test_work {
        dataSource {
            dbCreate = "update"
            url = "jdbc:mysql://icts-sdu-jdev2:3306/testCBM"
			pooled = true
			//logSql = true
			driverClassName = "com.mysql.jdbc.Driver"
			dialect = "org.hibernate.dialect.MySQL5InnoDBDialect"
			username = "cbm"
			password = "cbm2014"
            properties {
                maxActive = -1
                minEvictableIdleTimeMillis=1800000
                timeBetweenEvictionRunsMillis=1800000
                numTestsPerEvictionRun=3
                testOnBorrow=true
                testWhileIdle=true
                testOnReturn=false
                validationQuery="SELECT 1"
                jdbcInterceptors="ConnectionState"
            }

        }
    }
    production {
        dataSource {
            dbCreate = "nothing"
			url = "jdbc:mysql://icts-hisql1.unog.un.org/icts_cbm_prod"
			pooled = true
			//logSql = true
			driverClassName = "com.mysql.jdbc.Driver"
			dialect = "org.hibernate.dialect.MySQL5InnoDBDialect"
			username = "icts-cbm-app"
			password = "somepasswordthatisoverwritten"
            properties {
                maxActive = -1
                minEvictableIdleTimeMillis=1800000
                timeBetweenEvictionRunsMillis=1800000
                numTestsPerEvictionRun=3
                testOnBorrow=true
                testWhileIdle=true
                testOnReturn=false
                validationQuery="SELECT 1"
                jdbcInterceptors="ConnectionState"
            }
        }
    }
}
