#import "common-data.typ": data, template, titel
#show: template

#titel("Leseübung")

#for absatz in data.text [
  #absatz

]
