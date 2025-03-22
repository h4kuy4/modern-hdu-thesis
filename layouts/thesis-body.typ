#import "../utils/font.typ": 字号
#import "@preview/i-figured:0.2.4"

#let thesis-body(doc) = {
  set heading(numbering: "1.1", outlined: true)
  set pagebreak(weak: true)
  set par(first-line-indent: (amount: 2em, all: true), leading: 20pt, spacing: 20pt, justify: true)
  set text(font: ("Times New Roman", "SimSun"), size: 字号.小四)
  set text(top-edge: "baseline", bottom-edge: "baseline")
  set enum(numbering: "（1）")

  show heading.where(level: 1): it => [
    #set align(center)
    #set text(top-edge: "bounds", bottom-edge: "bounds")
    #set par(first-line-indent: 0em)

    #if it.numbering != none {
      pagebreak()
    }

    #v(1.5em)
    #if it.numbering == none [
      #set text(font: ("Times New Roman", "SimHei"), size: 字号.三号)
      #it.body
    ] else [
      #set text(font: "SimHei", size: 字号.三号)
      #counter(heading).display()#h(1em)#it.body
    ]
    #v(1em)
  ]
  show heading.where(level: 2): it => [
    #set text(font: "SimHei", size: 字号.四号, top-edge: "cap-height")
    #set par(first-line-indent: 0em)
    #counter(heading).display()#h(1em)#it.body
  ]

  show heading.where(level: 3): it => [
    #set text(font: "SimHei", size: 字号.小四, top-edge: "cap-height")
    #set par(first-line-indent: 0em)
    #counter(heading).display()#h(1em)#it.body
  ]

  show table: set text(top-edge: "cap-height")

  set figure.caption(separator: h(1em))
  show heading: i-figured.reset-counters
  show figure: i-figured.show-figure.with(numbering: "1-1")
  show figure.where(kind: table): set figure.caption(position: top)
  show figure.where(kind: table): set figure(supplement: [表])
  show figure.where(kind: image): set figure(supplement: [图])
  show figure.caption: set text(font: ("Times New Roman", "SimSun"), size: 字号.五号, top-edge: "cap-height")
  show figure.caption: set align(center)

  set math.equation(supplement: [式])
  show math.equation: i-figured.show-equation.with(numbering: "（1-1）")

  doc
}
