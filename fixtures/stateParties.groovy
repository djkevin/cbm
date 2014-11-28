/**
 * Created with IntelliJ IDEA.
 * User: jutliah
 * Date: 5/26/14
 * Time: 5:24 PM
 * To change this template use File | Settings | File Templates.
 */


import cbm.admin.Country
import cbm.admin.StateParty
import cbm.usermgt.SecRole
import cbm.usermgt.SecUserSecRole
import cbm.usermgt.User
import org.joda.time.LocalDate

fixture {

    sp1(StateParty) {
        country = Country.findByIso3('AFG')
        accessionRatification = new LocalDate("1975-03-26").toDate()
    }
    sp2(StateParty) {
        country = Country.findByIso3('ALB')
        accessionRatification = new LocalDate("1992-06-03").toDate()
    }
    sp3(StateParty) {
        country = Country.findByIso3('DZA')
        accessionRatification = new LocalDate("2001-09-28").toDate()
    }
    sp4(StateParty) {
        country = Country.findByIso3('ATG')
        accessionRatification = new LocalDate("2003-01-29").toDate()
    }
    sp5(StateParty) {
        country = Country.findByIso3('ARG')
        accessionRatification = new LocalDate("1979-11-27").toDate()
    }
    sp6(StateParty) {
        country = Country.findByIso3('ARM')
        accessionRatification = new LocalDate("1994-06-07").toDate()
    }
    sp7(StateParty) {
        country = Country.findByIso3('AUS')
        accessionRatification = new LocalDate("1977-10-05").toDate()
    }
    sp8(StateParty) {
        country = Country.findByIso3('AUT')
        accessionRatification = new LocalDate("1973-08-10").toDate()
    }
    sp9(StateParty) {
        country = Country.findByIso3('AZE')
        accessionRatification = new LocalDate("2004-02-26").toDate()
    }
    sp10(StateParty) {
        country = Country.findByIso3('BHS')
        accessionRatification = new LocalDate("1986-11-26").toDate()
    }
    sp11(StateParty) {
        country = Country.findByIso3('BHR')
        accessionRatification = new LocalDate("1988-10-28").toDate()
    }
    sp12(StateParty) {
        country = Country.findByIso3('BGD')
        accessionRatification = new LocalDate("1985-03-11").toDate()
    }
    sp13(StateParty) {
        country = Country.findByIso3('BRB')
        accessionRatification = new LocalDate("1973-02-16").toDate()
    }
    sp14(StateParty) {
        country = Country.findByIso3('BLR')
        accessionRatification = new LocalDate("1975-03-26").toDate()
    }
    sp15(StateParty) {
        country = Country.findByIso3('BEL')
        accessionRatification = new LocalDate("1979-03-15").toDate()
    }
    sp16(StateParty) {
        country = Country.findByIso3('BLZ')
        accessionRatification = new LocalDate("1986-10-20").toDate()
    }
    sp17(StateParty) {
        country = Country.findByIso3('BEN')
        accessionRatification = new LocalDate("1975-04-25").toDate()
    }
    sp18(StateParty) {
        country = Country.findByIso3('BTN')
        accessionRatification = new LocalDate("1978-06-08").toDate()
    }
    sp19(StateParty) {
        country = Country.findByIso3('BOL')
        accessionRatification = new LocalDate("1975-10-30").toDate()
    }
    sp20(StateParty) {
        country = Country.findByIso3('BIH')
        accessionRatification = new LocalDate("1994-08-15").toDate()
    }
    sp21(StateParty) {
        country = Country.findByIso3('BWA')
        accessionRatification = new LocalDate("1992-02-05").toDate()
    }
    sp22(StateParty) {
        country = Country.findByIso3('BRA')
        accessionRatification = new LocalDate("1973-02-27").toDate()
    }
    sp23(StateParty) {
        country = Country.findByIso3('BRN')
        accessionRatification = new LocalDate("1991-01-31").toDate()
    }
    sp24(StateParty) {
        country = Country.findByIso3('BGR')
        accessionRatification = new LocalDate("1972-08-02").toDate()
    }
    sp25(StateParty) {
        country = Country.findByIso3('BFA')
        accessionRatification = new LocalDate("1991-04-17").toDate()
    }
    sp26(StateParty) {
        country = Country.findByIso3('BDI')
        accessionRatification = new LocalDate("2011-10-18").toDate()
    }
    sp27(StateParty) {
        country = Country.findByIso3('KHM')
        accessionRatification = new LocalDate("1983-03-09").toDate()
    }
    sp28(StateParty) {
        country = Country.findByIso3('CMR')
        accessionRatification = new LocalDate("2013-01-18").toDate()
    }
    sp29(StateParty) {
        country = Country.findByIso3('CAN')
        accessionRatification = new LocalDate("1972-09-18").toDate()
    }
    sp30(StateParty) {
        country = Country.findByIso3('CPV')
        accessionRatification = new LocalDate("1977-10-20").toDate()
    }
    sp31(StateParty) {
        country = Country.findByIso3('CHL')
        accessionRatification = new LocalDate("1980-04-22").toDate()
    }
    sp32(StateParty) {
        country = Country.findByIso3('CHN')
        accessionRatification = new LocalDate("1984-11-15").toDate()
    }
    sp33(StateParty) {
        country = Country.findByIso3('COL')
        accessionRatification = new LocalDate("1983-12-19").toDate()
    }
    sp34(StateParty) {
        country = Country.findByIso3('COG')
        accessionRatification = new LocalDate("1978-10-23").toDate()
    }
    sp35(StateParty) {
        country = Country.findByIso3('COK')
        accessionRatification = new LocalDate("2008-12-04").toDate()
    }
    sp36(StateParty) {
        country = Country.findByIso3('CRI')
        accessionRatification = new LocalDate("1973-12-17").toDate()
    }
    sp37(StateParty) {
        country = Country.findByIso3('HRV')
        accessionRatification = new LocalDate("1993-04-28").toDate()
    }
    sp38(StateParty) {
        country = Country.findByIso3('CUB')
        accessionRatification = new LocalDate("1976-04-21").toDate()
    }
    sp39(StateParty) {
        country = Country.findByIso3('CYP')
        accessionRatification = new LocalDate("1973-11-06").toDate()
    }
    sp40(StateParty) {
        country = Country.findByIso3('CZE')
        accessionRatification = new LocalDate("1993-01-01").toDate()
    }
    sp41(StateParty) {
        country = Country.findByIso3('PRK')
        accessionRatification = new LocalDate("1987-03-13").toDate()
    }
    sp42(StateParty) {
        country = Country.findByIso3('COD')
        accessionRatification = new LocalDate("1975-09-16").toDate()
    }
    sp43(StateParty) {
        country = Country.findByIso3('DNK')
        accessionRatification = new LocalDate("1973-03-01").toDate()
    }
    sp44(StateParty) {
        country = Country.findByIso3('DOM')
        accessionRatification = new LocalDate("1973-02-23").toDate()
    }
    sp45(StateParty) {
        country = Country.findByIso3('ECU')
        accessionRatification = new LocalDate("1975-03-12").toDate()
    }
    sp46(StateParty) {
        country = Country.findByIso3('SLV')
        accessionRatification = new LocalDate("1991-12-31").toDate()
    }
    sp47(StateParty) {
        country = Country.findByIso3('GNQ')
        accessionRatification = new LocalDate("1989-01-16").toDate()
    }
    sp48(StateParty) {
        country = Country.findByIso3('EST')
        accessionRatification = new LocalDate("1993-06-21").toDate()
    }
    sp49(StateParty) {
        country = Country.findByIso3('ETH')
        accessionRatification = new LocalDate("1975-05-26").toDate()
    }
    sp50(StateParty) {
        country = Country.findByIso3('FJI')
        accessionRatification = new LocalDate("1973-09-04").toDate()
    }
    sp51(StateParty) {
        country = Country.findByIso3('FIN')
        accessionRatification = new LocalDate("1974-02-04").toDate()
    }
    sp52(StateParty) {
        country = Country.findByIso3('FRA')
        accessionRatification = new LocalDate("1984-09-27").toDate()
    }
    sp53(StateParty) {
        country = Country.findByIso3('GAB')
        accessionRatification = new LocalDate("2007-08-16").toDate()
    }
    sp54(StateParty) {
        country = Country.findByIso3('GMB')
        accessionRatification = new LocalDate("1997-05-07").toDate()
    }
    sp55(StateParty) {
        country = Country.findByIso3('GEO')
        accessionRatification = new LocalDate("1996-05-22").toDate()
    }
    sp56(StateParty) {
        country = Country.findByIso3('DEU')
        accessionRatification = new LocalDate("1973-04-07").toDate()
    }
    sp57(StateParty) {
        country = Country.findByIso3('GHA')
        accessionRatification = new LocalDate("1975-06-06").toDate()
    }
    sp58(StateParty) {
        country = Country.findByIso3('GRC')
        accessionRatification = new LocalDate("1975-12-10").toDate()
    }
    sp59(StateParty) {
        country = Country.findByIso3('GRD')
        accessionRatification = new LocalDate("1986-10-22").toDate()
    }
    sp60(StateParty) {
        country = Country.findByIso3('GTM')
        accessionRatification = new LocalDate("1973-09-19").toDate()
    }
    sp61(StateParty) {
        country = Country.findByIso3('GNB')
        accessionRatification = new LocalDate("1976-08-20").toDate()
    }
    sp62(StateParty) {
        country = Country.findByIso3('GUY')
        accessionRatification = new LocalDate("2013-03-26").toDate()
    }
    sp63(StateParty) {
        country = Country.findByIso3('VAT')
        accessionRatification = new LocalDate("2002-01-07").toDate()
    }
    sp64(StateParty) {
        country = Country.findByIso3('HND')
        accessionRatification = new LocalDate("1979-03-14").toDate()
    }
    sp65(StateParty) {
        country = Country.findByIso3('HUN')
        accessionRatification = new LocalDate("1972-12-27").toDate()
    }
    sp66(StateParty) {
        country = Country.findByIso3('ISL')
        accessionRatification = new LocalDate("1973-02-15").toDate()
    }
    sp67(StateParty) {
        country = Country.findByIso3('IND')
        accessionRatification = new LocalDate("1974-07-15").toDate()
    }
    sp68(StateParty) {
        country = Country.findByIso3('IDN')
        accessionRatification = new LocalDate("1992-02-04").toDate()
    }
    sp69(StateParty) {
        country = Country.findByIso3('IRN')
        accessionRatification = new LocalDate("1973-08-22").toDate()
    }
    sp70(StateParty) {
        country = Country.findByIso3('IRQ')
        accessionRatification = new LocalDate("1991-06-19").toDate()
    }
    sp71(StateParty) {
        country = Country.findByIso3('IRL')
        accessionRatification = new LocalDate("1972-10-27").toDate()
    }
    sp72(StateParty) {
        country = Country.findByIso3('ITA')
        accessionRatification = new LocalDate("1975-05-30").toDate()
    }
    sp73(StateParty) {
        country = Country.findByIso3('JAM')
        accessionRatification = new LocalDate("1975-08-13").toDate()
    }
    sp74(StateParty) {
        country = Country.findByIso3('JPN')
        accessionRatification = new LocalDate("1982-06-08").toDate()
    }
    sp75(StateParty) {
        country = Country.findByIso3('JOR')
        accessionRatification = new LocalDate("1975-05-30").toDate()
    }
    sp76(StateParty) {
        country = Country.findByIso3('KAZ')
        accessionRatification = new LocalDate("2007-06-15").toDate()
    }
    sp77(StateParty) {
        country = Country.findByIso3('KEN')
        accessionRatification = new LocalDate("1976-01-07").toDate()
    }
    sp78(StateParty) {
        country = Country.findByIso3('KWT')
        accessionRatification = new LocalDate("1972-07-18").toDate()
    }
    sp79(StateParty) {
        country = Country.findByIso3('KGZ')
        accessionRatification = new LocalDate("2004-10-15").toDate()
    }
    sp80(StateParty) {
        country = Country.findByIso3('LAO')
        accessionRatification = new LocalDate("1973-03-20").toDate()
    }
    sp81(StateParty) {
        country = Country.findByIso3('LVA')
        accessionRatification = new LocalDate("1997-02-06").toDate()
    }
    sp82(StateParty) {
        country = Country.findByIso3('LBN')
        accessionRatification = new LocalDate("1975-03-26").toDate()
    }
    sp83(StateParty) {
        country = Country.findByIso3('LSO')
        accessionRatification = new LocalDate("1977-09-06").toDate()
    }
    sp84(StateParty) {
        country = Country.findByIso3('LBY')
        accessionRatification = new LocalDate("1982-01-19").toDate()
    }
    sp85(StateParty) {
        country = Country.findByIso3('LIE')
        accessionRatification = new LocalDate("1991-05-30").toDate()
    }
    sp86(StateParty) {
        country = Country.findByIso3('LTU')
        accessionRatification = new LocalDate("1998-02-10").toDate()
    }
    sp87(StateParty) {
        country = Country.findByIso3('LUX')
        accessionRatification = new LocalDate("1976-03-23").toDate()
    }
    sp88(StateParty) {
        country = Country.findByIso3('MDG')
        accessionRatification = new LocalDate("2008-03-07").toDate()
    }
    sp89(StateParty) {
        country = Country.findByIso3('MWI')
        accessionRatification = new LocalDate("2013-04-02").toDate()
    }
    sp90(StateParty) {
        country = Country.findByIso3('MYS')
        accessionRatification = new LocalDate("1991-09-06").toDate()
    }
    sp91(StateParty) {
        country = Country.findByIso3('MDV')
        accessionRatification = new LocalDate("1993-08-02").toDate()
    }
    sp92(StateParty) {
        country = Country.findByIso3('MLI')
        accessionRatification = new LocalDate("2002-11-25").toDate()
    }
    sp93(StateParty) {
        country = Country.findByIso3('MLT')
        accessionRatification = new LocalDate("1975-04-07").toDate()
    }
    sp94(StateParty) {
        country = Country.findByIso3('MHL')
        accessionRatification = new LocalDate("2012-11-15").toDate()
    }
    sp95(StateParty) {
        country = Country.findByIso3('MUS')
        accessionRatification = new LocalDate("1972-08-07").toDate()
    }
    sp96(StateParty) {
        country = Country.findByIso3('MEX')
        accessionRatification = new LocalDate("1974-04-08").toDate()
    }
    sp97(StateParty) {
        country = Country.findByIso3('MCO')
        accessionRatification = new LocalDate("1999-04-30").toDate()
    }
    sp98(StateParty) {
        country = Country.findByIso3('MNG')
        accessionRatification = new LocalDate("1972-09-05").toDate()
    }
    sp99(StateParty) {
        country = Country.findByIso3('MNE')
        accessionRatification = new LocalDate("2006-06-03").toDate()
    }
    sp100(StateParty) {
        country = Country.findByIso3('MAR')
        accessionRatification = new LocalDate("2002-03-21").toDate()
    }
    sp101(StateParty) {
        country = Country.findByIso3('MOZ')
        accessionRatification = new LocalDate("2011-03-29").toDate()
    }
    sp102(StateParty) {
        country = Country.findByIso3('NRU')
        accessionRatification = new LocalDate("2013-03-05").toDate()
    }
    sp103(StateParty) {
        country = Country.findByIso3('NLD')
        accessionRatification = new LocalDate("1981-06-22").toDate()
    }
    sp104(StateParty) {
        country = Country.findByIso3('NZL')
        accessionRatification = new LocalDate("1972-12-13").toDate()
    }
    sp105(StateParty) {
        country = Country.findByIso3('NIC')
        accessionRatification = new LocalDate("1975-08-07").toDate()
    }
    sp106(StateParty) {
        country = Country.findByIso3('NER')
        accessionRatification = new LocalDate("1972-06-23").toDate()
    }
    sp107(StateParty) {
        country = Country.findByIso3('NGA')
        accessionRatification = new LocalDate("1973-07-03").toDate()
    }
    sp108(StateParty) {
        country = Country.findByIso3('NOR')
        accessionRatification = new LocalDate("1973-08-01").toDate()
    }
    sp109(StateParty) {
        country = Country.findByIso3('OMN')
        accessionRatification = new LocalDate("1992-03-31").toDate()
    }
    sp110(StateParty) {
        country = Country.findByIso3('PAK')
        accessionRatification = new LocalDate("1974-09-25").toDate()
    }
    sp111(StateParty) {
        country = Country.findByIso3('PLW')
        accessionRatification = new LocalDate("2003-02-20").toDate()
    }
    sp112(StateParty) {
        country = Country.findByIso3('PAN')
        accessionRatification = new LocalDate("1974-03-20").toDate()
    }
    sp113(StateParty) {
        country = Country.findByIso3('PNG')
        accessionRatification = new LocalDate("1980-10-27").toDate()
    }
    sp114(StateParty) {
        country = Country.findByIso3('PRY')
        accessionRatification = new LocalDate("1976-06-09").toDate()
    }
    sp115(StateParty) {
        country = Country.findByIso3('PER')
        accessionRatification = new LocalDate("1985-06-05").toDate()
    }
    sp116(StateParty) {
        country = Country.findByIso3('PHL')
        accessionRatification = new LocalDate("1973-05-21").toDate()
    }
    sp117(StateParty) {
        country = Country.findByIso3('POL')
        accessionRatification = new LocalDate("1973-01-25").toDate()
    }
    sp118(StateParty) {
        country = Country.findByIso3('PRT')
        accessionRatification = new LocalDate("1975-05-15").toDate()
    }
    sp119(StateParty) {
        country = Country.findByIso3('QAT')
        accessionRatification = new LocalDate("1975-04-17").toDate()
    }
    sp120(StateParty) {
        country = Country.findByIso3('KOR')
        accessionRatification = new LocalDate("1987-06-25").toDate()
    }
    /*sp121(StateParty) {
        country = Country.findByIso3('MDA')
        accessionRatification = new LocalDate("2005-01-28").toDate()
    }*/
    sp122(StateParty) {
        country = Country.findByIso3('ROU')
        accessionRatification = new LocalDate("1979-07-25").toDate()
    }
    sp123(StateParty) {
        country = Country.findByIso3('RUS')
        accessionRatification = new LocalDate("1975-03-26").toDate()
    }
    sp124(StateParty) {
        country = Country.findByIso3('RWA')
        accessionRatification = new LocalDate("1975-05-20").toDate()
    }
    sp125(StateParty) {
        country = Country.findByIso3('KNA')
        accessionRatification = new LocalDate("1991-04-02").toDate()
    }
    sp126(StateParty) {
        country = Country.findByIso3('LCA')
        accessionRatification = new LocalDate("1986-11-26").toDate()
    }
    sp127(StateParty) {
        country = Country.findByIso3('VCT')
        accessionRatification = new LocalDate("1999-05-13").toDate()
    }
    sp128(StateParty) {
        country = Country.findByIso3('SMR')
        accessionRatification = new LocalDate("1975-03-11").toDate()
    }
    sp129(StateParty) {
        country = Country.findByIso3('STP')
        accessionRatification = new LocalDate("1979-08-24").toDate()
    }
    sp130(StateParty) {
        country = Country.findByIso3('SAU')
        accessionRatification = new LocalDate("1972-05-24").toDate()
    }
    sp131(StateParty) {
        country = Country.findByIso3('SEN')
        accessionRatification = new LocalDate("1975-03-26").toDate()
    }
    sp132(StateParty) {
        country = Country.findByIso3('SRB')
        accessionRatification = new LocalDate("1992-04-27").toDate()
    }
    sp133(StateParty) {
        country = Country.findByIso3('SYC')
        accessionRatification = new LocalDate("1979-10-11").toDate()
    }
    sp134(StateParty) {
        country = Country.findByIso3('SLE')
        accessionRatification = new LocalDate("1976-06-29").toDate()
    }
    sp135(StateParty) {
        country = Country.findByIso3('SGP')
        accessionRatification = new LocalDate("1975-12-02").toDate()
    }
    sp136(StateParty) {
        country = Country.findByIso3('SVK')
        accessionRatification = new LocalDate("1993-01-01").toDate()
    }
    sp137(StateParty) {
        country = Country.findByIso3('SVN')
        accessionRatification = new LocalDate("1992-04-07").toDate()
    }
    sp138(StateParty) {
        country = Country.findByIso3('SLB')
        accessionRatification = new LocalDate("1981-06-17").toDate()
    }
    sp139(StateParty) {
        country = Country.findByIso3('ZAF')
        accessionRatification = new LocalDate("1975-11-03").toDate()
    }
    sp140(StateParty) {
        country = Country.findByIso3('ESP')
        accessionRatification = new LocalDate("1979-06-20").toDate()
    }
    sp141(StateParty) {
        country = Country.findByIso3('LKA')
        accessionRatification = new LocalDate("1976-11-18").toDate()
    }
    sp142(StateParty) {
        country = Country.findByIso3('SDN')
        accessionRatification = new LocalDate("2003-10-17").toDate()
    }
    sp143(StateParty) {
        country = Country.findByIso3('SUR')
        accessionRatification = new LocalDate("1993-01-06").toDate()
    }
    sp144(StateParty) {
        country = Country.findByIso3('SWZ')
        accessionRatification = new LocalDate("1991-06-18").toDate()
    }
    sp145(StateParty) {
        country = Country.findByIso3('SWE')
        accessionRatification = new LocalDate("1976-02-05").toDate()
    }
    sp146(StateParty) {
        country = Country.findByIso3('CHE')
        accessionRatification = new LocalDate("1976-05-04").toDate()
    }
    sp147(StateParty) {
        country = Country.findByIso3('TJK')
        accessionRatification = new LocalDate("2005-06-27").toDate()
    }
    sp148(StateParty) {
        country = Country.findByIso3('THA')
        accessionRatification = new LocalDate("1975-05-28").toDate()
    }
    sp149(StateParty) {
        country = Country.findByIso3('MKD')
        accessionRatification = new LocalDate("1996-12-26").toDate()
    }
    sp150(StateParty) {
        country = Country.findByIso3('TLS')
        accessionRatification = new LocalDate("2003-05-05").toDate()
    }
    sp151(StateParty) {
        country = Country.findByIso3('TGO')
        accessionRatification = new LocalDate("1976-11-10").toDate()
    }
    sp152(StateParty) {
        country = Country.findByIso3('TON')
        accessionRatification = new LocalDate("1976-09-28").toDate()
    }
    sp153(StateParty) {
        country = Country.findByIso3('TTO')
        accessionRatification = new LocalDate("2007-07-19").toDate()
    }
    sp154(StateParty) {
        country = Country.findByIso3('TUN')
        accessionRatification = new LocalDate("1973-05-18").toDate()
    }
    sp155(StateParty) {
        country = Country.findByIso3('TUR')
        accessionRatification = new LocalDate("1974-10-25").toDate()
    }
    sp156(StateParty) {
        country = Country.findByIso3('TKM')
        accessionRatification = new LocalDate("1996-01-11").toDate()
    }
    sp157(StateParty) {
        country = Country.findByIso3('UGA')
        accessionRatification = new LocalDate("1992-05-12").toDate()
    }
    sp158(StateParty) {
        country = Country.findByIso3('UKR')
        accessionRatification = new LocalDate("1975-03-26").toDate()
    }
    sp159(StateParty) {
        country = Country.findByIso3('ARE')
        accessionRatification = new LocalDate("2008-06-19").toDate()
    }
    sp160(StateParty) {
        country = Country.findByIso3('GBR')
        accessionRatification = new LocalDate("1975-03-26").toDate()
    }
    sp161(StateParty) {
        country = Country.findByIso3('USA')
        accessionRatification = new LocalDate("1975-03-26").toDate()
    }
    sp162(StateParty) {
        country = Country.findByIso3('URY')
        accessionRatification = new LocalDate("1981-04-06").toDate()
    }
    sp163(StateParty) {
        country = Country.findByIso3('UZB')
        accessionRatification = new LocalDate("1996-01-26").toDate()
    }
    sp164(StateParty) {
        country = Country.findByIso3('VEN')
        accessionRatification = new LocalDate("1978-10-18").toDate()
    }
    sp165(StateParty) {
        country = Country.findByIso3('VNM')
        accessionRatification = new LocalDate("1980-06-20").toDate()
    }
    sp166(StateParty) {
        country = Country.findByIso3('YEM')
        accessionRatification = new LocalDate("1979-06-01").toDate()
    }
    sp167(StateParty) {
        country = Country.findByIso3('ZMB')
        accessionRatification = new LocalDate("2008-01-15").toDate()
    }
    sp168(StateParty) {
        country = Country.findByIso3('ZWE')
        accessionRatification = new LocalDate("1990-11-05").toDate()
    }

}
