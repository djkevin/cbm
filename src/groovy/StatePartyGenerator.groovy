import org.joda.time.LocalDate
import org.joda.time.format.DateTimeFormat
import org.joda.time.format.DateTimeFormatter

class StatePartyGenerator {
    String messagesEN
    String messagesFR
    String fixture
    String constants
    String userFixtureG

    StatePartyGenerator(String inputFilePath) {

        File f = new File(inputFilePath)
        readLinesAndGenerateData(f)

    }

    def readLinesAndGenerateData(File f) {
        def count = 0
        f.eachLine {
            if (count > 0) {
                generateAll(it, count)
            }
            count++
        }
    }

    def generateAll(String lines, int count) {
        fixture += generateFixtures(lines, count)
        messagesEN += generateMessagesEN(lines)
        messagesFR += generateMessagesFR(lines)
        constants += generateCountryConstants(lines)

    }

    def generateFixtures(String lines, int count) {
        def fields = ["country", "accessionRatification"]

        def line = lines.toString().tokenize(",")
        def countryFixture = """\
        sp${count}(StateParty) {
             ${fields[0]} =  "${formatCountry(line[0])}"
             ${fields[1]} =  ${formatDate(line[1])}
        }
        """

        def userFixture = """\
            user${count}(User) {
                userName = "${line[2].toLowerCase()}"
                password = "${line[2]}123"
                stateParty = [sp${count}]
            }
        """
        userFixtureG += userFixture
        return countryFixture
    }

    def generateMessagesEN(String lines) {
        //cbm.Country.MAURITIUS=Mauritius
        def line = lines.toString().tokenize(",")
        def messages = """\
        cbm.Country.${formatCountry(line[0])}=${line[0]}
        """
        return messages
    }

    def generateMessagesFR(String lines) {
        //cbm.Country.MAURITIUS=Mauritius
        def line = lines.toString().tokenize(",")
        def messages = """\
        cbm.Country.${formatCountry(line[0])}=${line[3]}
        """
        return messages
    }

    def generateCountryConstants(String lines) {
        def line = lines.toString().tokenize(",")
        def countryConstants = """\
        ${formatCountry(line[0])},
    """
        return countryConstants
    }

    private String formatCountry(String s) {
        return s.toUpperCase().replaceAll('\'', '').replaceAll(' ', '_').replaceAll('\\(', '_').replaceAll('\\)', '').replaceAll('-', '_').replaceAll('__', '_')
    }

    private String formatDate(String s) {
        DateTimeFormatter formatter = DateTimeFormat.forPattern("dd-MMM-yy")
        LocalDate dt = formatter.parseLocalDate(s)
        return "new LocalDate(\"" + dt.toString("yyyy-MM-dd") + "\").toDate()"

    }

    public static void main(String[] args) {
        String inputFile = "D:\\temp\\sp2.csv"   // or H:\SDU\projects\CBM/sp2.csv
        StatePartyGenerator spg = new StatePartyGenerator(inputFile)
/*
        println spg.messagesEN
        println spg.fixture
        println spg.constants   */
        println spg.userFixtureG

//        println spg.messagesFR

   /*     def file1 = new File('test.txt')
        file1.withWriter('UTF-8') { w ->
            w.write(spg.messagesFR)
        }*/


    }

}
