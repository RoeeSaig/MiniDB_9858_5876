
[General]
Version=1

[Preferences]
Username=
Password=2458
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=C##HR
Name=GENERAL_MANAGER
Count=100..150

[Record]
Name=GMID
Type=NUMBER
Size=
Data=Random(0000000, 9999999)
Master=

[Record]
Name=GMNAME
Type=VARCHAR2
Size=20
Data=FirstName
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
Data=Random(20, 100)
Master=

