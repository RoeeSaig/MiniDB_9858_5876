
[General]
Version=1

[Preferences]
Username=
Password=2438
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=C##HR
Name=INVENTORY
Count=100..150

[Record]
Name=ITEMID
Type=NUMBER
Size=
Data=Random(000000, 999999)
Master=

[Record]
Name=ITEMDES
Type=VARCHAR2
Size=100
Data=List('Pens', 'Pencils', 'Notebooks', 'Staplers', 'Paper Clips', 'Sticky Notes', 'Scissors', 'Tape', 'Highlighters', 'Folders', 'Binders', 'Envelopes', 'Printer Paper', 'Markers', 'Desk Organizers', 'Erasers', 'Calculators', 'Staple Removers', 'Rulers', 'Glue Sticks', 'Correction Fluid', 'Label Makers', 'File Cabinets', 'Clipboards', 'Laminators', 'Trash Cans', 'Whiteboards', 'Calendars', 'Desk Lamps', 'Mouse Pads')
Master=

[Record]
Name=AMOUNT
Type=NUMBER
Size=
Data=Random(10, 100)
Master=

[Record]
Name=EXDATE
Type=DATE
Size=
Data=Random("01-01-2012", "02-02-2024")
Master=

[Record]
Name=DEPTNAME
Type=VARCHAR2
Size=20
Data=SQL(SELECT * FROM (SELECT DEPTNAME FROM DEPARTMENT ORDER BY DBMS_RANDOM.VALUE) WHERE ROWNUM = 1)
Master=

[Record]
Name=ITEMNAME
Type=VARCHAR2
Size=20
Data=List('Pens', 'Pencils', 'Notebooks', 'Staplers', 'Paper Clips', 'Sticky Notes', 'Scissors', 'Tape', 'Highlighters', 'Folders', 'Binders', 'Envelopes', 'Printer Paper', 'Markers', 'Desk Organizers', 'Erasers', 'Calculators', 'Staple Removers', 'Rulers', 'Glue Sticks', 'Correction Fluid', 'Label Makers', 'File Cabinets', 'Clipboards', 'Laminators', 'Trash Cans', 'Whiteboards', 'Calendars', 'Desk Lamps', 'Mouse Pads') + Company
Master=

