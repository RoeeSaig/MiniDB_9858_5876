
[General]
Version=1

[Preferences]
Username=
Password=2700
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=C##HR
Name=RESERVATIONS
Count=1000..3000

[Record]
Name=DEPTNAME
Type=VARCHAR2
Size=20
Data= list(select DEPTNAME from DEPARTMENT)
Master=

[Record]
Name=SUPNUM
Type=NUMBER
Size=
Data=list(select SUPNUM from SUPPLIERS)
Master=

[Record]
Name=RESDATE
Type=DATE
Size=
Data=Random(01.01.2012, 02.02.2024)
Master=

