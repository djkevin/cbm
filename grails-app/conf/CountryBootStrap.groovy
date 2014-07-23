import cbm.admin.Country
import org.springframework.util.StringUtils

class CountryBootStrap {


    def init = { servletContext ->
        println "Running init CountryBootStrap..."

        if (!cbm.admin.Country.count()) {
            log.info " no countries in db currently, loading from file..."

            // Refer to http://groovy.codehaus.org/api/groovy/util/CharsetToolkit.html to get the correct charset
            // data/countries relative to  conf directory
            Reader reader = new InputStreamReader(getClass().getResourceAsStream('data/countries.txt'), "UTF-16LE")

            def lineNum = 0

            reader.eachLine {
                if (lineNum > 0) {

                    def origLine = it.toString()
                    //Cleanup articles, special chars
                    def cleanedLine = it
                            .replaceAll(~/\[masc\.\]/, '')
                            .replaceAll(~/\[fém\.\]/, '')
                            .replaceAll(~/\(the\)/, '')
                            .replaceAll(~/\(le\)/, '')
                            .replaceAll(~/\(la\)/, '')
                            .replaceAll(~/\(les\)/, '')
                            .replaceAll(~/\(los\)/, '')
                            .replaceAll(~/\(las\)/, '')
                            .replaceAll(~/\(el\)/, '')
                            .replaceAll(~/\(l'\)/, '')
                            .replaceAll(~/\*/, '')

                    def cols = cleanedLine.split(',')

                    if (cols.size() != 14) {
                        println "orig: " + origLine
                        println "clean: " + cleanedLine
                        println "---------------------------------------------------------------------------------------------------------------"
                    }

                    def country = new Country(
                            iso2: cols[0].trim(),
                            iso3: cols[1].trim(),
                            shortNameEn: cols[2].trim(),
                            shortNameFr: StringUtils.capitalize(cols[3].trim()),
                            shortNameEs: StringUtils.capitalize(cols[4].trim()),
                            shortNameRu: cols[5].trim(),
                            shortNameCh: cols[6].trim(),
                            shortNameAr: cols[7].trim(),
                            formalNameEn: StringUtils.capitalize(cols[8].trim()),
                            formalNameFr: StringUtils.capitalize(cols[9].trim()),
                            formalNameEs: StringUtils.capitalize(cols[10].trim()),
                            formalNameRu: cols[11].trim(),
                            formalNameCh: cols[12].trim(),
                            formalNameAr: cols[13].trim()
                    ).save(flush: true)
                    //println "---------------------------------------------------------------------------------------------------------------"
                }

                lineNum++
            }

        }

        log.info " done loading Countries..."

    }

    def destroy = {
        log.info "Running destroy CountryBootStrap"

    }
}