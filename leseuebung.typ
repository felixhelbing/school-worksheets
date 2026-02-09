#import "common.typ": data, template
#show: template

#align(center)[
  #block(below: 12pt)[
    #text(size: 20pt, weight: "bold")[Leseübung]
  ]
]

#for absatz in data.text [
  #absatz

]
