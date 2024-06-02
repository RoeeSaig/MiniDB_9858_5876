
[General]
Version=1

[Preferences]
Username=
Password=2156
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=C##HR
Name=DEPARTMENT
Count=100..150

[Record]
Name=DEPTNAME
Type=VARCHAR2
Size=20
Data=Company
Master=

[Record]
Name=GMID
Type=NUMBER
Size=
Data=SQL(SELECT * FROM (SELECT GMID FROM GENERAL_MANAGER ORDER BY DBMS_RANDOM.VALUE) WHERE ROWNUM = 1)
Master=

