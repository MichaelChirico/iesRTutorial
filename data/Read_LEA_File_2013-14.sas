*****************************************************************************************;
*       PROGRAM: LEA_format.sas                                                         *;
*          NOTE: This program provides formatted values for the categorical             *;
*                variables in the CCD LEA file.                                         *;
*   PROVIDED BY: National Center for Education Statistics                               *;
*   LAST UPDATED: July 7, 2015                                                          *;
*****************************************************************************************;

PROC FORMAT;
  VALUE $fipsf
	'01'='Alabama'           '02'='Alaska'        '04'='Arizona'
	'05'='Arkansas'          '06'='California'    '08'='Colorado'       '09'='Connecticut'
	'10'='Delaware'          '11'='District of Columbia'                '12'='Florida'
	'13'='Georgia' 	       	 '14'='Guam'          '15'='Hawaii'         '16'='Idaho'
	'17'='Illinois'	         '18'='Indiana'       '19'='Iowa'           '20'='Kansas'
	'21'='Kentucky'          '22'='Louisiana'     '23'='Maine'          '24'='Maryland'
	'25'='Massachusetts'     '26'='Michigan'      '27'='Minnesota'      '28'='Mississippi'
	'29'='Missouri'          '30'='Montana'       '31'='Nebraska'       '32'='Nevada'
	'33'='New Hampshire'     '34'='New Jersey'    '35'='New Mexico'     '36'='New York'
	'37'='North Carolina'    '38'='North Dakota'  '39'='Ohio'           '40'='Oklahoma'
	'41'='Oregon'            '42'='Pennsylvania'  '43'='Puerto Rico'    '44'='Rhode Island'
	'45'='South Carolina'    '46'='South Dakota'  '47'='Tennessee'      '48'='Texas'
	'49'='Utah'              '50'='Vermont'       '51'='Virginia'       '52'='Virgin Islands'
	'53'='Washington'        '54'='West Virginia' '55'='Wisconsin'      '56'='Wyoming'
	'59'='Bureau of Indian Affairs'		      '60'='American Samoa'
	'63'='Department of Defense Education Activity'     		    '66'='Guam'
	'69'='Northern Marianas' '72'='Puerto Rico'   '78'='Virgin Islands' 
	'M'='Missing'            'N'='Not Applicable';
  VALUE $Typef
	'1'  ='Regular LEA'
	'2'  ='Regular LEA - Component of a Supervisory Union'
	'3'  ='Supervisory Union Administrative Center'
	'4'  ='Regional Education Service Agency'
	'5'  ='State-operated Education Agency'
	'6'  ='Federally Operated Education Agency'
	'7'  ='Charter Agency'
        '8'  ='Other Education Agency'
	'M'  ='Missing'
	'N'  ='Not Applicable';
  VALUE $metmicf
        '0'  ='CBSA = 70,300 or Higher'
	'1'  ='CBSA Is a Metropolitan Area'
	'2'  ='CBSA Is a Micropolitan Area'
	'M'  ='Missing'
	'N'  ='Not Applicable';
  VALUE $Ulocalf
        '11' ='Large city (population of 250,000 or more)'
        '12' ='Mid-size city (population less than 250,000; more than 100,000)'
        '13' ='Small city (population of 100,000 or less)'
        '21' ='Suburb, large urbanized area'
        '22' ='Suburb, mid-size urbanized area'
        '23' ='Suburb, small urbanized area'
        '31' ='Town, fringe territory inside an urban cluster'
        '32' ='Town, distant territory inside an urban cluster'
        '33' ='Town, remote territory inside an urban cluster'
        '41' ='Rural, fringe'
        '42' ='Rural, distant'
        '43' ='Rural, remote'
	'M'  ='Missing'
	'N'  ='Not Applicable';
  VALUE $Boundf
	'1'  ='Open - No Change Since Last Report'
	'2'  ='Closed - Currently Not In Operation'
	'3'  ='New - Newly Created/Completely Restructured'
	'4'  ='Added - In existence, not reported on prev. year'
	'5'  ='Changed - Significant Change in Boundaries'
	'6'  ='Inactive - Temporarily Closed'
	'7'  ='Future - Scheduled to be Operational within 2 years'
	'8'  ='Reopened after closure'
	'M'  ='Missing'
	'N'  ='Not Applicable';
  VALUE $Gslof
	'01' ='1st Grade'
	'02' ='2nd Grade'
	'03' ='3rd Grade'
	'04' ='4th Grade'
	'05' ='5th Grade'
	'06' ='6th Grade'
	'07' ='7th Grade'
	'08' ='8th Grade'
	'09' ='9th Grade'
	'10' ='10th Grade'
	'11' ='11th Grade'
	'12' ='12th Grade'
	'KG' ='Kindergarten'
	'PK' ='PreKindergarten'
	'UG' ='Ungraded'
	'M'  ='Missing'
	'N'  ='NA/No Students Reported';
  VALUE $Gshif
	'01' ='1st Grade'
	'02' ='2nd Grade'
	'03' ='3rd Grade'
	'04' ='4th Grade'
	'05' ='5th Grade'
	'06' ='6th Grade'
	'07' ='7th Grade'
	'08' ='8th Grade'
	'09' ='9th Grade'
	'10' ='10th Grade'
	'11' ='11th Grade'
	'12' ='12th Grade'
	'KG' ='Kindergarten'
	'PK' ='PreKindergarten'
	'UG' ='Ungraded'
	'M'  ='Missing'
	'N'  ='NA/No Students Reported';
  VALUE $Bieaf
	'1'  ='Yes'
	'2'  ='No'
	'M'  ='Missing'
	'N'  ='NA/No Students Reported';
  VALUE $Pkoffrdf
	'1'  ='Yes'
	'2'  ='No'
	'M'  ='Missing'
	'N'  ='NA/No Students Reported';
  VALUE $Kgoffrdf
	'1'  ='Yes'
	'2'  ='No'
	'M'  ='Missing'
	'N'  ='NA/No Students Reported';
  VALUE $G01offrf
	'1'  ='Yes'
	'2'  ='No'
	'M'  ='Missing'
	'N'  ='NA/No Students Reported';
  VALUE $G02offrf
	'1'  ='Yes'
	'2'  ='No'
	'M'  ='Missing'
	'N'  ='NA/No Students Reported';
  VALUE $G03offrf
	'1'  ='Yes'
	'2'  ='No'
	'M'  ='Missing'
	'N'  ='NA/No Students Reported';
  VALUE $G04offrf
	'1'  ='Yes'
	'2'  ='No'
	'M'  ='Missing'
	'N'  ='NA/No Students Reported';
  VALUE $G05offrf
	'1'  ='Yes'
	'2'  ='No'
	'M'  ='Missing'
	'N'  ='NA/No Students Reported';
  VALUE $G06offrf
	'1'  ='Yes'
	'2'  ='No'
	'M'  ='Missing'
	'N'  ='NA/No Students Reported';
  VALUE $G07offrf
	'1'  ='Yes'
	'2'  ='No'
	'M'  ='Missing'
	'N'  ='NA/No Students Reported';
  VALUE $G08offrf
	'1'  ='Yes'
	'2'  ='No'
	'M'  ='Missing'
	'N'  ='NA/No Students Reported';
  VALUE $G09offrf
	'1'  ='Yes'
	'2'  ='No'
	'M'  ='Missing'
	'N'  ='NA/No Students Reported';
  VALUE $G10offrf
	'1'  ='Yes'
	'2'  ='No'
	'M'  ='Missing'
	'N'  ='NA/No Students Reported';
  VALUE $G11offrf
	'1'  ='Yes'
	'2'  ='No'
	'M'  ='Missing'
	'N'  ='NA/No Students Reported';
  VALUE $G12offrf
	'1'  ='Yes'
	'2'  ='No'
	'M'  ='Missing'
	'N'  ='NA/No Students Reported';	
  VALUE $UGoffrf
	'1'  ='Yes'
	'2'  ='No'
	'M'  ='Missing'
	'N'  ='NA/No Students Reported';
  VALUE $Agchrtf
	'1'  ='All schools are charters'
	'2'  ='Some but not all schools are charters'
	'3'  ='No schools are charters'
	'M'  ='Missing'
	'N'  ='NA/No Students Reported';
  VALUE $EditFlagf
	'1'  ='Edit Failed'
	'2'  ='Edit Did Not Fail';
  VALUE $Suppressionf
	'PS'  ='Data not Suppressed - Data Passed Edit'
	'FA'  ='Data not Suppressed - Analyst Approved Data'	
	'FE'  ='Data not Suppressed - State Response Validated Data'
	'FB'  ='Data Suppressed - State Response Requires Data Suppression'
	'FN'  ='Data Suppressed - State Non-Response Requires Data Suppression';
  VALUE $Chartleastatf
	'N'            = 'Not Applicable'
	'NOTCHR'       = 'Not a charter district' 
	'CHRTIDEAESEA' = 'Charter for IDEA, ESEA & Perkins'  
	'CHRTESEA'     = 'Charter for ESEA and Perkins' 
	'CHRTIDEA'     = 'Charter for IDEA programs' 
	'CHRTNOTLEA'   = 'Not an LEA under any federal program'  
	'M'            = 'Missing';

RUN;

 
