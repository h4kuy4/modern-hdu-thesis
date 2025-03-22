#import "../utils/font.typ": 字号
#import "../layouts/thesis-page.typ": thesis-page

#let outline-page(pager-state: state) = {
  show: thesis-page.with(footer: false)

  set heading(outlined: false)
  show heading.where(level: 1): it => [
    #set align(center)
    #set text(top-edge: "bounds", bottom-edge: "bounds")
    #set par(first-line-indent: 0em)

    #v(1.5em)
    #set text(font: ("Times New Roman", "SimHei"), size: 字号.三号)
    #it.body
    #v(1.75em)
  ]

  set outline.entry(fill: repeat([.], gap: 0.01em))
  show outline.entry: it => [
    #it.indented(it.prefix(), it.inner(), gap: 1em)
  ]
  show outline: set text(
    font: ("Times New Roman", "SimSun"),
    size: 字号.小四,
    top-edge: "bounds",
    bottom-edge: "bounds",
  )

  show outline: it => {
    pager-state.update(true)
    it
    pager-state.update(false)
  }

  outline(title: text(tracking: 2em)[目录])
}
