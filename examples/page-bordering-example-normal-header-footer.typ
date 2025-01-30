
#let header = {
  set align(bottom)
  set text(weight: "bold")
  table(
    stroke: none,
    columns: (0.8fr, 1.4fr, 0.8fr),
    rows: 1fr,
    [], [Product Specification document], [],
  )
}

#let footer = {
  set text(weight: "bold")
  table(
    stroke: none,
    columns: (0.8fr, 1.4fr, 0.8fr),
    rows: 1fr,
    [PREFIX-12345678],
    [Product Specification document],
    [
      #context counter(page).display(
        "1 / 1",
        both: true,
      )
    ],
  )
}

#import "../src/page-bordering.typ": page-bordering
#show: page-bordering.with(
  page-args: (
    margin: (left: 30pt, right: 30pt, top: 60pt, bottom: 60pt),
  ),
  expand: 15pt,
  space-top: 15pt,
  space-bottom: 15pt,
  strokeHeader: none,
  strokeFooter: none,
  header: header,
  footer: footer,
)

= Scope

This specification applies to a product.

= Model

Target is below.
- [type1]
- [type2]
- [type3]


= Document History
#table(
  columns: (auto, auto, auto, 1fr),
  [Version], [Date], [Author], [Modification],
  [1.0.1],
  [yyyy/mm/dd],
  [Shumpei Tanaka],
  [
    - fix ~~~
    - add aaa
  ],

  [1.0.0],
  [yyyy/mm/dd],
  [Shumpei Tanaka],
  [
    - first vertion
  ],
)

