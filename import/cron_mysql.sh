#!/bin/sh
echo "truncate table admissionsstatusforstudent;" | mysql -uroot -pa0482000A "sis"
echo "truncate table admissionsstudentitemstatus;" | mysql -uroot -pa0482000A "sis"
echo "truncate table admissionswebresponsefromstudent;" | mysql -uroot -pa0482000A "sis"
echo "truncate table cordat1;" | mysql -uroot -pa0482000A "sis"
echo "truncate table cordat1p;" | mysql -uroot -pa0482000A "sis"
echo "truncate table cordat4;" | mysql -uroot -pa0482000A "sis"
echo "truncate table cordat4p;" | mysql -uroot -pa0482000A "sis"
echo "truncate table corstud5and8;" | mysql -uroot -pa0482000A "sis"
echo "truncate table studentscholarshipsreceived" | mysql -uroot -pa0482000A "sis"
echo "truncate table studentcostreceived;" | mysql -uroot -pa0482000A "sis"
echo "truncate table studentfinancialaidstatus;" | mysql -uroot -pa0482000A "sis"
echo "truncate table webresponse;" | mysql -uroot -pa0482000A "sis"

mysql -uroot -pa0482000A  "sis" <<QUERY_INPUT

LOAD DATA LOCAL INFILE '/var/www/html/sis/import/admissionsstatusforstudent.csv' INTO TABLE admissionsstatusforstudent
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(socialsecuritynumber, itemname, itemnamelong, itemstatus, itemstatuslong, comment, color, date, sortorder)
QUERY_INPUT

mysql -uroot -pa0482000A  "sis" <<QUERY_INPUT

LOAD DATA LOCAL INFILE '/var/www/html/sis/import/admissionsstudentitemstatus.csv' INTO TABLE admissionsstudentitemstatus
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(itemname, itemnamelong, itemstatus, itemstatuslong, sortorder, color, archive)
QUERY_INPUT

mysql -uroot -pa0482000A  "sis" <<QUERY_INPUT

LOAD DATA LOCAL INFILE '/var/www/html/sis/import/admissionswebresponsefromstudent.csv' INTO TABLE admissionswebresponsefromstudent
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(itemname, questions, responsefromquestionpicked, extrainputboxneeded)
QUERY_INPUT

mysql -uroot -pa0482000A  "sis" <<QUERY_INPUT

load data local infile '/var/www/html/sis/import/cordat1.csv' into table cordat1
fields terminated by ',' 
enclosed by '"' 
lines terminated by '\r\n'
IGNORE 0 LINES
(SOCSECNUM, Password, Lastname, Firstname, Middlename, Address, PERCITY, PERSTATE, Zip, CURPHONE, CellPhone, SEX, BIRTHDATE, emailaddress, DriversLicenseNumber, ACTCOMPOSI, ACTENG, ACTMATH, ACTSOCSCI, ACTNATSCI, ACTREADING, READCOMP, GED)
QUERY_INPUT


mysql -uroot -pa0482000A  "sis" <<QUERY_INPUT

LOAD DATA LOCAL INFILE '/var/www/html/sis/import/cordat1p.csv' INTO TABLE cordat1p
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
IGNORE 0 LINES
(SOCSECNUM, Password, Lastname, Firstname, Middlename, Address, PERCITY, PERSTATE, Zip, CURPHONE, CellPhone, SEX, BIRTHDATE, emailaddress, DriversLicenseNumber, ACTCOMPOSI, ACTENG, ACTMATH, ACTSOCSCI, ACTNATSCI, ACTREADING, READCOMP, GED)
QUERY_INPUT

mysql -uroot -pa0482000A  "sis" <<QUERY_INPUT

LOAD DATA LOCAL INFILE '/var/www/html/sis/import/cordat4.csv' INTO TABLE cordat4
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
IGNORE 0 LINES
(SOCSECNUM, DISCIPLINE, COURSENO, HOURSCRED, SECTION, Description, FACULTY, GRADE, GradeNum, Term, Year, DevelopmentCourse, Advisor, Transfer, College)
QUERY_INPUT


mysql -uroot -pa0482000A  "sis" <<QUERY_INPUT

LOAD DATA LOCAL INFILE '/var/www/html/sis/import/cordat4p.csv' INTO TABLE cordat4p
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
IGNORE 0 LINES
(SOCSECNUM, DISCIPLINE, COURSENO, HOURSCRED, SECTION, Description, FACULTY, GRADE, GradeNum, Term, Year, DevelopmentCourse, Advisor, Transfer, College)
QUERY_INPUT

mysql -uroot -pa0482000A  "sis" <<QUERY_INPUT

LOAD DATA LOCAL INFILE '/var/www/html/sis/import/corstud5and8.csv' INTO TABLE corstud5and8
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
IGNORE 0 LINES
(socsecnum, PAPDAY, Description, Charges, Payments)
QUERY_INPUT

mysql -uroot -pa0482000A  "sis" <<QUERY_INPUT

LOAD DATA LOCAL INFILE '/var/www/html/sis/import/studentscholarshipsreceived.csv' INTO TABLE studentscholarshipsreceived
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
IGNORE 0 LINES
(socsecnum, Year, nameofscholarship, dollarAmount, FallAmount, fallstatus, FallDate, SpringAmount, SpringDate, springstatus, SummerAmount, SummerDate, SummerStatus)
QUERY_INPUT

mysql -uroot -pa0482000A  "sis" <<QUERY_INPUT

LOAD DATA LOCAL INFILE '/var/www/html/sis/import/studentcostreceived.csv' INTO TABLE studentcostreceived
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
IGNORE 0 LINES
(socsecnum, Year, nameofcost, dollarAmount, Status, FallAmount, FallDate, SpringAmount, SpringDate, springstatus, SummerAmount, SummerDate, SummerStatus)
QUERY_INPUT

mysql -uroot -pa0482000A  "sis" <<QUERY_INPUT

LOAD DATA LOCAL INFILE '/var/www/html/sis/import/studentfinancialaidstatus.csv' INTO TABLE studentfinancialaidstatus
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
IGNORE 0 LINES
(socsecnum, year, itemname, itemnamelong, itemstatus, itemstatuslong, comment, color, date, nameofscholarship, dollaramount)
QUERY_INPUT

mysql -uroot -pa0482000A  "sis" <<QUERY_INPUT

LOAD DATA LOCAL INFILE '/var/www/html/sis/import/webresponse.csv' INTO TABLE webresponse
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
IGNORE 0 LINES
(itemname, questions, responsefromquestionpicked, extrainputboxneeded)
QUERY_INPUT