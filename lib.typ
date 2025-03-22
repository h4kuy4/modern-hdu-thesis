#import "pages/abstract-page.typ": abstract-page-cn, abstract-page-en
#import "pages/cover-page.typ": cover-page
#import "pages/decl-page.typ": decl-page
#import "pages/outline-page.typ": outline-page
#import "layouts/thesis-body.typ": thesis-body
#import "layouts/thesis-page.typ": thesis-page

#let thesis-init(
  graduate-year: 2025,
  topic: "基于Typst的杭电论文模板",
  institute: "计算机学院",
  major: "计算机科学与技术",
  class: "21xxxxxx",
  student-id: "21xxxxxx",
  name: "张三",
  supervisor: "李四",
  complete-time: datetime(year: 2025, month: 4, day: 1),
  abstract-cn: lorem(100),
  abstract-en: lorem(100),
  keywords-cn: ("Typst", "论文模板"),
  keywords-en: ("Typst", "Thesis Template"),
  acknowledgement: none,
  reference: [],
  appendix: [],
  doc,
) = {
  set document(title: topic, author: name)


  cover-page(
    graduate-year: graduate-year,
    topic: topic,
    institute: institute,
    major: major,
    class: class,
    student-id: student-id,
    name: name,
    supervisor: supervisor,
    complete-time: complete-time,
  )

  decl-page(topic: topic)

  abstract-page-cn(keywords: keywords-cn, abstract-cn)

  abstract-page-en(keywords: keywords-en, abstract-en)

  let pager-state = state("pager-state", false)

  outline-page(pager-state: pager-state)

  show: thesis-page.with(pager-state: pager-state)
  show: thesis-body.with()

  counter(page).update(1)
  doc

  set heading(numbering: none)

  if acknowledgement != none [
    #pagebreak(weak: true)
    = 致谢
    #acknowledgement
  ]

  if reference != none [
    #set bibliography(title: "参考文献", style: "gb-7714-2015-numeric")
    #pagebreak(weak: true)
    #reference
  ]

  if reference != none [
    #pagebreak(weak: true)
    = 附录
    #appendix
  ]
}
