
[General]
Version=1

[Preferences]
Username=
Password=2838
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=C##HR
Name=SUPPLIERS
Count=100..150

[Record]
Name=SUPNUM
Type=NUMBER
Size=
Data=Random(100000, 999999)
Master=

[Record]
Name=SUPNAME
Type=VARCHAR2
Size=20
Data=Company
Master=

[Record]
Name=PHONE
Type=NUMBER
Size=
Data=05 + Random(0, 9) + - + Random(0000000, 99999999)
Master=

[Record]
Name=TYPE_S
Type=VARCHAR2
Size=20
Data=List('Pens', 'Pencils', 'Notebooks', 'Staplers', 'Paper Clips', 'Sticky Notes', 'Scissors', 'Tape', 'Highlighters', 'Folders', 'Binders', 'Envelopes', 'Printer Paper', 'Markers', 'Desk Organizers', 'Erasers', 'Calculators', 'Staple Removers', 'Rulers', 'Glue Sticks', 'Correction Fluid', 'Label Makers', 'File Cabinets', 'Clipboards', 'Laminators', 'Trash Cans', 'Whiteboards', 'Calendars', 'Desk Lamps', 'Mouse Pads')
Master=

