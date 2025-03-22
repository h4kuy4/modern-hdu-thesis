#import "../layouts/thesis-page.typ": thesis-page
#import "../utils/font.typ": 字号

#import "@preview/cuti:0.2.1": *

#let decl-page(topic: "XXXXXXXX") = {
  show: thesis-page.with(header: false, footer: false)

  text(font: "SimHei", size: 字号.小二, tracking: 0.5em)[
    #v(5.5em)
    #align(center)[#fakebold[诚信承诺]]
    #v(1.5em)
  ]

  par(first-line-indent: 2em, leading: 2em, justify: true)[
    #text(font: "SimSun", size: 字号.四号)[
      我谨在此承诺：本人所写的毕业论文《#(topic)》均系本人独立完成，没有抄袭行为，凡涉及其他作者的观点和材料，均作了注释，若有不实，后果由本人承担。
    ]
  ]

  text(font: "SimHei", size: 字号.小三)[
    #v(2em)
    #align(right)[
      #fakebold[承诺人（签名）： #h(7em)]

      #v(1em)

      #fakebold[#h(4em)年#h(2em)月#h(2em)日#h(5em)]
    ]
  ]

  pagebreak()
}
