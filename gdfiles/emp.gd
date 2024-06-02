
[General]
Version=1

[Preferences]
Username=
Password=2934
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=C##HR
Name=EMPLOYEE
Count=100..150

[Record]
Name=EMID
Type=NUMBER
Size=
Data=Random(000000, 999999)
Master=

[Record]
Name=EMNAME
Type=VARCHAR2
Size=20
Data=FirstName + LastName
Master=

[Record]
Name=PHONE
Type=NUMBER
Size=
Data=Random(000000000, 999999999)
Master=

[Record]
Name=HOURS
Type=NUMBER
Size=
Data=Random(5, 12)
Master=

[Record]
Name=DEPTNAME
Type=VARCHAR2
Size=20
Data=SQL(SELECT * FROM (SELECT DEPTNAME FROM DEPARTMENT ORDER BY DBMS_RANDOM.VALUE) WHERE ROWNUM = 1)
Master=

