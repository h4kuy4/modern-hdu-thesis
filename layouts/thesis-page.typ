#import "../utils/font.typ": 字号

#let thesis-page(header: true, footer: true, pager-state: none, doc) = {
  if footer and type(pager-state) != state {
    panic("footer must have pager state")
  }

  set page(paper: "a4", margin: (top: 3cm, bottom: 2cm, left: 4cm, right: 2cm))

  set page(
    header-ascent: 1cm - 字号.五号,
    header: box(width: 100%, outset: (bottom: 5pt), stroke: (bottom: black))[
      #align(center)[
        #text(font: ("Times New Roman", "SimSun"), size: 字号.五号)[
          杭州电子科技大学本科毕业设计（论文）
        ]
      ]
    ],
  ) if header

  set page(
    footer-descent: 1cm,
    numbering: (..n) => context {
      if pager-state.get() {
        numbering("1", ..n)
      } else {
        text(size: 字号.小五)[\- #n.at(0) \-]
      }
    },
  ) if footer

  doc
}
