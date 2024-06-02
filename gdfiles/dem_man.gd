
[General]
Version=1

[Preferences]
Username=
Password=2943
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=C##HR
Name=DEPARTMENT_MANAGERS
Count=100..150

[Record]
Name=DMID
Type=NUMBER
Size=
Data=Random(0000000, 9999999)
Master=

[Record]
Name=DMNAME
Type=VARCHAR2
Size=20
Data=LastName
Master=

[Record]
Name=PHONE
Type=NUMBER
Size=
Data=Random(000000000, 999999999)
Master=

[Record]
Name=REPORTS
Type=VARCHAR2
Size=100
Data=Random(000, 100)
Master=

[Record]
Name=DEPTNAME
Type=VARCHAR2
Size=20
Data=SQL(SELECT * FROM (SELECT DEPTNAME FROM DEPARTMENT ORDER BY DBMS_RANDOM.VALUE) WHERE ROWNUM = 1)
Master=

