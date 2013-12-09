package cbm

import java.util.Date;

class FormG extends BaseForm {

  static belongsTo = [Report]
  static embedded = ['location']
	
	String facilityName
	Address location
	String typesOfDiseaseCovered

    Report report

    static constraints = {
		facilityName()
		location()
		typesOfDiseaseCovered maxSize:5000
		
    }
}
