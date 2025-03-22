#import "../layouts/thesis-page.typ": thesis-page
#import "../layouts/thesis-abstract.typ": thesis-abstract

#let abstract-page-cn(keywords: array, body) = {
  show: thesis-page.with(footer: false)
  show: thesis-abstract.with()

  [= 摘要 <cn-heading>]

  body

  v(1.5em)

  par(first-line-indent: 0em)[
    关键词：<keyword>
    #(("",) + keywords.intersperse("；")).sum()
  ]

  pagebreak()
}

#let abstract-page-en(keywords: (), body) = {
  show: thesis-page.with(footer: false)
  show: thesis-abstract.with()

  [= ABSTRACT <en-heading>]

  body

  v(1.5em)

  par(first-line-indent: 0em)[
    Keywords：<keyword>
    #(("",) + keywords.intersperse("；")).sum()
  ]

  pagebreak()
}
