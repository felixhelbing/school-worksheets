#import "common-data.typ": data, template, titel
#show: template

#titel("Abschreiben")

*Aufgabe:* Schreibe den Satz ab. Schreibe langsam und ruhig.

#let lane = 5mm
#let line-stroke = 0.4pt + luma(180)

#for satz in data.saetze [
  #v(10pt)

  *Satz:* #satz

  #v(8pt)

  #for j in range(2) [
    #table(
      columns: (100%,),
      rows: (lane, lane, lane),
      inset: 0pt,
      stroke: line-stroke,
      [], [], []
    )
    #v(8mm)
  ]
]
