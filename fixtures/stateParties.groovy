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
   /*
     user1(User) {
        username = "afg"
        password = "AFG123"
        stateParty = [sp1]
    }
    user2(User) {
        username = "alb"
        password = "ALB123"
        stateParty = [sp2]
    }
    user3(User) {
        username = "dza"
        password = "DZA123"
        stateParty = [sp3]
    }
    user4(User) {
        username = "atg"
        password = "ATG123"
        stateParty = [sp4]
    }
    user5(User) {
        username = "arg"
        password = "ARG123"
        stateParty = [sp5]
    }
    user6(User) {
        username = "arm"
        password = "ARM123"
        stateParty = [sp6]
    }
    user7(User) {
        username = "aus"
        password = "AUS123"
        stateParty = [sp7]
    }
    user8(User) {
        username = "aut"
        password = "AUT123"
        stateParty = [sp8]
    }
    user9(User) {
        username = "aze"
        password = "AZE123"
        stateParty = [sp9]
    }
    user10(User) {
        username = "bhs"
        password = "BHS123"
        stateParty = [sp10]
    }
    user11(User) {
        username = "bhr"
        password = "BHR123"
        stateParty = [sp11]
    }
    user12(User) {
        username = "bgd"
        password = "BGD123"
        stateParty = [sp12]
    }
    user13(User) {
        username = "brb"
        password = "BRB123"
        stateParty = [sp13]
    }
    user14(User) {
        username = "blr"
        password = "BLR123"
        stateParty = [sp14]
    }   */
    user15(User) {
        username = "bel"
        password = "Sunning Bushings"
        stateParty = [sp15]
    }  /*
    user16(User) {
        username = "blz"
        password = "BLZ123"
        stateParty = [sp16]
    }
    user17(User) {
        username = "ben"
        password = "BEN123"
        stateParty = [sp17]
    }
    user18(User) {
        username = "btn"
        password = "BTN123"
        stateParty = [sp18]
    }
    user19(User) {
        username = "bol"
        password = "BOL123"
        stateParty = [sp19]
    }
    user20(User) {
        username = "bih"
        password = "BIH123"
        stateParty = [sp20]
    }
    user21(User) {
        username = "bwa"
        password = "BWA123"
        stateParty = [sp21]
    }
    user22(User) {
        username = "bra"
        password = "BRA123"
        stateParty = [sp22]
    }
    user23(User) {
        username = "brn"
        password = "BRN123"
        stateParty = [sp23]
    }
    user24(User) {
        username = "bgr"
        password = "BGR123"
        stateParty = [sp24]
    }
    user25(User) {
        username = "bfa"
        password = "BFA123"
        stateParty = [sp25]
    }
    user26(User) {
        username = "bdi"
        password = "BDI123"
        stateParty = [sp26]
    }
    user27(User) {
        username = "khm"
        password = "KHM123"
        stateParty = [sp27]
    }
    user28(User) {
        username = "cmr"
        password = "CMR123"
        stateParty = [sp28]
    }
    user29(User) {
        username = "can"
        password = "CAN123"
        stateParty = [sp29]
    }
    user30(User) {
        username = "cpv"
        password = "CPV123"
        stateParty = [sp30]
    }
    user31(User) {
        username = "chl"
        password = "CHL123"
        stateParty = [sp31]
    }
    user32(User) {
        username = "chn"
        password = "CHN123"
        stateParty = [sp32]
    }
    user33(User) {
        username = "col"
        password = "COL123"
        stateParty = [sp33]
    }
    user34(User) {
        username = "cog"
        password = "COG123"
        stateParty = [sp34]
    }
    user35(User) {
        username = "cok"
        password = "COK123"
        stateParty = [sp35]
    }
    user36(User) {
        username = "cri"
        password = "CRI123"
        stateParty = [sp36]
    }
    user37(User) {
        username = "hrv"
        password = "HRV123"
        stateParty = [sp37]
    }
    user38(User) {
        username = "cub"
        password = "CUB123"
        stateParty = [sp38]
    }
    user39(User) {
        username = "cyp"
        password = "CYP123"
        stateParty = [sp39]
    }
    user40(User) {
        username = "cze"
        password = "CZE123"
        stateParty = [sp40]
    }
    user41(User) {
        username = "prk"
        password = "PRK123"
        stateParty = [sp41]
    }
    user42(User) {
        username = "cod"
        password = "COD123"
        stateParty = [sp42]
    }
    user43(User) {
        username = "dnk"
        password = "DNK123"
        stateParty = [sp43]
    }
    user44(User) {
        username = "dom"
        password = "DOM123"
        stateParty = [sp44]
    }
    user45(User) {
        username = "ecu"
        password = "ECU123"
        stateParty = [sp45]
    }
    user46(User) {
        username = "slv"
        password = "SLV123"
        stateParty = [sp46]
    }
    user47(User) {
        username = "gnq"
        password = "GNQ123"
        stateParty = [sp47]
    }
    user48(User) {
        username = "est"
        password = "EST123"
        stateParty = [sp48]
    }
    user49(User) {
        username = "eth"
        password = "ETH123"
        stateParty = [sp49]
    }
    user50(User) {
        username = "fji"
        password = "FJI123"
        stateParty = [sp50]
    }
    user51(User) {
        username = "fin"
        password = "FIN123"
        stateParty = [sp51]
    }
    user52(User) {
        username = "fra"
        password = "FRA123"
        stateParty = [sp52]
    }
    user53(User) {
        username = "gab"
        password = "GAB123"
        stateParty = [sp53]
    }
    user54(User) {
        username = "gmb"
        password = "GMB123"
        stateParty = [sp54]
    }
    user55(User) {
        username = "geo"
        password = "GEO123"
        stateParty = [sp55]
    }
    user56(User) {
        username = "deu"
        password = "DEU123"
        stateParty = [sp56]
    }
    user57(User) {
        username = "gha"
        password = "GHA123"
        stateParty = [sp57]
    }
    user58(User) {
        username = "grc"
        password = "GRC123"
        stateParty = [sp58]
    }
    user59(User) {
        username = "grd"
        password = "GRD123"
        stateParty = [sp59]
    }
    user60(User) {
        username = "gtm"
        password = "GTM123"
        stateParty = [sp60]
    }
    user61(User) {
        username = "gnb"
        password = "GNB123"
        stateParty = [sp61]
    }
    user62(User) {
        username = "guy"
        password = "GUY123"
        stateParty = [sp62]
    }
    user63(User) {
        username = "vat"
        password = "VAT123"
        stateParty = [sp63]
    }
    user64(User) {
        username = "hnd"
        password = "HND123"
        stateParty = [sp64]
    }
    user65(User) {
        username = "hun"
        password = "HUN123"
        stateParty = [sp65]
    }
    user66(User) {
        username = "isl"
        password = "ISL123"
        stateParty = [sp66]
    }
    user67(User) {
        username = "ind"
        password = "IND123"
        stateParty = [sp67]
    }
    user68(User) {
        username = "idn"
        password = "IDN123"
        stateParty = [sp68]
    }
    user69(User) {
        username = "irn"
        password = "IRN123"
        stateParty = [sp69]
    }
    user70(User) {
        username = "irq"
        password = "IRQ123"
        stateParty = [sp70]
    }
    user71(User) {
        username = "irl"
        password = "IRL123"
        stateParty = [sp71]
    }
    user72(User) {
        username = "ita"
        password = "ITA123"
        stateParty = [sp72]
    }
    user73(User) {
        username = "jam"
        password = "JAM123"
        stateParty = [sp73]
    }
    user74(User) {
        username = "jpn"
        password = "JPN123"
        stateParty = [sp74]
    }
    user75(User) {
        username = "jor"
        password = "JOR123"
        stateParty = [sp75]
    }
    user76(User) {
        username = "kaz"
        password = "KAZ123"
        stateParty = [sp76]
    }
    user77(User) {
        username = "ken"
        password = "KEN123"
        stateParty = [sp77]
    }
    user78(User) {
        username = "kwt"
        password = "KWT123"
        stateParty = [sp78]
    }
    user79(User) {
        username = "kgz"
        password = "KGZ123"
        stateParty = [sp79]
    }
    user80(User) {
        username = "lao"
        password = "LAO123"
        stateParty = [sp80]
    }
    user81(User) {
        username = "lva"
        password = "LVA123"
        stateParty = [sp81]
    }
    user82(User) {
        username = "lbn"
        password = "LBN123"
        stateParty = [sp82]
    }
    user83(User) {
        username = "lso"
        password = "LSO123"
        stateParty = [sp83]
    }
    user84(User) {
        username = "lby"
        password = "LBY123"
        stateParty = [sp84]
    }
    user85(User) {
        username = "lie"
        password = "LIE123"
        stateParty = [sp85]
    }
    user86(User) {
        username = "ltu"
        password = "LTU123"
        stateParty = [sp86]
    }
    user87(User) {
        username = "lux"
        password = "LUX123"
        stateParty = [sp87]
    }
    user88(User) {
        username = "mdg"
        password = "MDG123"
        stateParty = [sp88]
    }
    user89(User) {
        username = "mwi"
        password = "MWI123"
        stateParty = [sp89]
    }
    user90(User) {
        username = "mys"
        password = "MYS123"
        stateParty = [sp90]
    }
    user91(User) {
        username = "mdv"
        password = "MDV123"
        stateParty = [sp91]
    }
    user92(User) {
        username = "mli"
        password = "MLI123"
        stateParty = [sp92]
    }
    user93(User) {
        username = "mlt"
        password = "MLT123"
        stateParty = [sp93]
    }
    user94(User) {
        username = "mhl"
        password = "MHL123"
        stateParty = [sp94]
    }
    user95(User) {
        username = "mus"
        password = "MUS123"
        stateParty = [sp95]
    }
    user96(User) {
        username = "mex"
        password = "MEX123"
        stateParty = [sp96]
    }
    user97(User) {
        username = "mco"
        password = "MCO123"
        stateParty = [sp97]
    }
    user98(User) {
        username = "mng"
        password = "MNG123"
        stateParty = [sp98]
    }
    user99(User) {
        username = "mne"
        password = "MNE123"
        stateParty = [sp99]
    }
    user100(User) {
        username = "mar"
        password = "MAR123"
        stateParty = [sp100]
    }
    user101(User) {
        username = "moz"
        password = "MOZ123"
        stateParty = [sp101]
    }
    user102(User) {
        username = "nru"
        password = "NRU123"
        stateParty = [sp102]
    }
    user103(User) {
        username = "nld"
        password = "NLD123"
        stateParty = [sp103]
    }
    user104(User) {
        username = "nzl"
        password = "NZL123"
        stateParty = [sp104]
    }
    user105(User) {
        username = "nic"
        password = "NIC123"
        stateParty = [sp105]
    }
    user106(User) {
        username = "ner"
        password = "NER123"
        stateParty = [sp106]
    }
    user107(User) {
        username = "nga"
        password = "NGA123"
        stateParty = [sp107]
    }
    user108(User) {
        username = "nor"
        password = "NOR123"
        stateParty = [sp108]
    }
    user109(User) {
        username = "omn"
        password = "OMN123"
        stateParty = [sp109]
    }
    user110(User) {
        username = "pak"
        password = "PAK123"
        stateParty = [sp110]
    }
    user111(User) {
        username = "plw"
        password = "PLW123"
        stateParty = [sp111]
    }
    user112(User) {
        username = "pan"
        password = "PAN123"
        stateParty = [sp112]
    }
    user113(User) {
        username = "png"
        password = "PNG123"
        stateParty = [sp113]
    }
    user114(User) {
        username = "pry"
        password = "PRY123"
        stateParty = [sp114]
    }
    user115(User) {
        username = "per"
        password = "PER123"
        stateParty = [sp115]
    }
    user116(User) {
        username = "phl"
        password = "PHL123"
        stateParty = [sp116]
    }
    user117(User) {
        username = "pol"
        password = "POL123"
        stateParty = [sp117]
    }
    user118(User) {
        username = "prt"
        password = "PRT123"
        stateParty = [sp118]
    }
    user119(User) {
        username = "qat"
        password = "QAT123"
        stateParty = [sp119]
    }
    user120(User) {
        username = "kor"
        password = "KOR123"
        stateParty = [sp120]
    }  /*
    user121(User) {
        username = "mda"
        password = "MDA123"
        stateParty = [sp121]
    }*/     /*
    user122(User) {
        username = "rou"
        password = "ROU123"
        stateParty = [sp122]
    }
    user123(User) {
        username = "rus"
        password = "RUS123"
        stateParty = [sp123]
    }
    user124(User) {
        username = "rwa"
        password = "RWA123"
        stateParty = [sp124]
    }
    user125(User) {
        username = "kna"
        password = "KNA123"
        stateParty = [sp125]
    }
    user126(User) {
        username = "lca"
        password = "LCA123"
        stateParty = [sp126]
    }
    user127(User) {
        username = "vct"
        password = "VCT123"
        stateParty = [sp127]
    }
    user128(User) {
        username = "smr"
        password = "SMR123"
        stateParty = [sp128]
    }
    user129(User) {
        username = "stp"
        password = "STP123"
        stateParty = [sp129]
    }
    user130(User) {
        username = "sau"
        password = "SAU123"
        stateParty = [sp130]
    }
    user131(User) {
        username = "sen"
        password = "SEN123"
        stateParty = [sp131]
    }
    user132(User) {
        username = "srb"
        password = "SRB123"
        stateParty = [sp132]
    }
    user133(User) {
        username = "syc"
        password = "SYC123"
        stateParty = [sp133]
    }
    user134(User) {
        username = "sle"
        password = "SLE123"
        stateParty = [sp134]
    }
    user135(User) {
        username = "sgp"
        password = "SGP123"
        stateParty = [sp135]
    }
    user136(User) {
        username = "svk"
        password = "SVK123"
        stateParty = [sp136]
    }
    user137(User) {
        username = "svn"
        password = "SVN123"
        stateParty = [sp137]
    }
    user138(User) {
        username = "slb"
        password = "SLB123"
        stateParty = [sp138]
    }
    user139(User) {
        username = "zaf"
        password = "ZAF123"
        stateParty = [sp139]
    }
    user140(User) {
        username = "esp"
        password = "ESP123"
        stateParty = [sp140]
    }
    user141(User) {
        username = "lka"
        password = "LKA123"
        stateParty = [sp141]
    }
    user142(User) {
        username = "sdn"
        password = "SDN123"
        stateParty = [sp142]
    }
    user143(User) {
        username = "sur"
        password = "SUR123"
        stateParty = [sp143]
    }
    user144(User) {
        username = "swz"
        password = "SWZ123"
        stateParty = [sp144]
    }  */
    user145(User) {
        username = "swe"
        password = "Rationalizing Trustfulness"
        stateParty = [sp145]
    }
    user146(User) {
        username = "che"
        password = "Capitalising Immunology"
        stateParty = [sp146]
    }     /*
    user147(User) {
        username = "tjk"
        password = "TJK123"
        stateParty = [sp147]
    }
    user148(User) {
        username = "tha"
        password = "THA123"
        stateParty = [sp148]
    }
    user149(User) {
        username = "mkd"
        password = "MKD123"
        stateParty = [sp149]
    }
    user150(User) {
        username = "tls"
        password = "TLS123"
        stateParty = [sp150]
    }
    user151(User) {
        username = "tgo"
        password = "TGO123"
        stateParty = [sp151]
    }
    user152(User) {
        username = "ton"
        password = "TON123"
        stateParty = [sp152]
    }
    user153(User) {
        username = "tto"
        password = "TTO123"
        stateParty = [sp153]
    }
    user154(User) {
        username = "tun"
        password = "TUN123"
        stateParty = [sp154]
    }
    user155(User) {
        username = "tur"
        password = "TUR123"
        stateParty = [sp155]
    }
    user156(User) {
        username = "tkm"
        password = "TKM123"
        stateParty = [sp156]
    }
    user157(User) {
        username = "uga"
        password = "UGA123"
        stateParty = [sp157]
    }
    user158(User) {
        username = "ukr"
        password = "UKR123"
        stateParty = [sp158]
    }
    user159(User) {
        username = "are"
        password = "ARE123"
        stateParty = [sp159]
    }  */
    user160(User) {
        username = "gbr"
        password = "Compared Jacaranda"
        stateParty = [sp160]
    }
    user161(User) {
        username = "usa"
        password = "Kickstarting Limerick"
        stateParty = [sp161]
    }
    user162(User) {
        username = "ury"
        password = "Imagined Warranties"
        stateParty = [sp162]
    } /*
    user163(User) {
        username = "uzb"
        password = "UZB123"
        stateParty = [sp163]
    }
    user164(User) {
        username = "ven"
        password = "VEN123"
        stateParty = [sp164]
    }
    user165(User) {
        username = "vnm"
        password = "VNM123"
        stateParty = [sp165]
    }
    user166(User) {
        username = "yem"
        password = "YEM123"
        stateParty = [sp166]
    }
    user167(User) {
        username = "zmb"
        password = "ZMB123"
        stateParty = [sp167]
    }
    user168(User) {
        username = "zwe"
        password = "ZWE123"
        stateParty = [sp168]
    }
    /* USER ROLES*/
    //TODO complete for other countries in prod
    roleUser(SecRole) {
        authority = 'ROLE_USER'
    }
    userRoleSWE(SecUserSecRole) {
        secUser = user145
        secRole = roleUser
    }
    userRoleUS(SecUserSecRole) {
        secUser = user161
        secRole = roleUser
    }

    userRoleUK(SecUserSecRole) {
        secUser = user160
        secRole = roleUser
    }

    userRole162(SecUserSecRole) {
        secUser = user162
        secRole = roleUser
    }
    userRoleBEL(SecUserSecRole) {
        secUser = user15
        secRole = roleUser
    }
    userRoleCHE(SecUserSecRole) {
        secUser = user146
        secRole = roleUser
    }

}
