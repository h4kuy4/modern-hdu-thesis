#import "../utils/font.typ": 字号

#let thesis-abstract(doc) = {
  set pagebreak(weak: true)
  set heading(outlined: false)
  set text(font: ("Times New Roman", "SimSun"), size: 字号.小四)
  set text(top-edge: "baseline", bottom-edge: "baseline")
  set par(first-line-indent: (amount: 2em, all: true), leading: 20pt, spacing: 20pt, justify: true)

  show heading.where(level: 1): it => [
    #set align(center)
    #set text(top-edge: "bounds", bottom-edge: "bounds")
    #set par(first-line-indent: 0em)

    #v(1.5em)
    #set text(font: ("Times New Roman", "SimHei"), size: 字号.三号)
    #it.body
    #v(1.5em)
  ]

  show <cn-heading>: set text(tracking: 2em)
  show <en-heading>: set text(weight: "bold")

  show <keyword>: set par(first-line-indent: 0em)
  show <keyword>: set text(font: ("Times New Roman", "SimHei"), size: 字号.小四, weight: "bold")

  doc
}
