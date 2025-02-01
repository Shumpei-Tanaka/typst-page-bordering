
#let header = {
  rect(width: 100%, height: 100%, fill: green)[
    header area
  ]
}

#let footer = {
  rect(width: 100%, height: 100%, fill: green)[
    footer area
  ]
}

#set page(paper: "a6")

#import "../src/page-bordering.typ": page-bordering
#show: page-bordering.with(
  margin: (left: 80pt, right: 80pt, top: 80pt, bottom: 80pt),
  expand: 40pt,
  space-top: 20pt,
  space-bottom: 20pt,
  strokeHeader: auto,
  strokeFooter: auto,
  header: header,
  footer: footer,
)

#let foreground = {
  place(
    dy: 80pt,
    rect(inset: (x: 0pt), stroke: none, fill: silver)[
      #set align(center)
      #line(start: (0pt, 0pt), end: (80pt, 0pt), stroke: maroon)
      mergin.left
    ],
  )
  place(
    dx: 40pt,
    dy: 120pt,
    rect(inset: (x: 0pt), stroke: none, fill: silver)[
      #set align(center)
      #line(start: (0pt, 0pt), end: (40pt, 0pt), stroke: maroon)
      expand
    ],
  )
  place(
    dx: 218pt,
    dy: 80pt,
    rect(inset: (x: 0pt), stroke: none, fill: silver)[
      #set align(center)
      #line(start: (0pt, 0pt), end: (80pt, 0pt), stroke: maroon)
      mergin.right
    ],
  )
  place(
    dx: 218pt,
    dy: 120pt,
    rect(inset: (x: 0pt), stroke: none, fill: silver)[
      #set align(center)
      #line(start: (0pt, 0pt), end: (40pt, 0pt), stroke: maroon)
      expand
    ],
  )
  place(
    dx: 210pt,
    dy: 0pt,
    rect(inset: (y: 0pt), stroke: none, fill: silver)[
      #set align(center)
      #grid(
        columns: 2,
        gutter: 5pt,
        line(start: (0pt, 0pt), end: (0pt, 80pt), stroke: maroon), [margin.top],
      )
    ],
  )
  place(
    dx: 120pt,
    dy: 0pt,
    rect(inset: (y: 0pt), stroke: none, fill: silver)[
      #set align(center)
      #grid(
        columns: 2,
        gutter: 5pt,
        line(start: (0pt, 0pt), end: (0pt, 20pt), stroke: maroon), [space-top],
      )
    ],
  )
  place(
    dx: 160pt,
    dy: 40pt,
    rect(inset: (y: 0pt), stroke: none, fill: silver)[
      #set align(center)
      #grid(
        columns: 2,
        gutter: 5pt,
        line(start: (0pt, 0pt), end: (0pt, 40pt), stroke: maroon), [expand],
      )
    ],
  )
  place(
    dx: 210pt,
    dy: 400pt - 61pt,
    rect(inset: (y: 0pt), stroke: none, fill: silver)[
      #set align(center)
      #grid(
        columns: 2,
        gutter: 5pt,
        line(start: (0pt, 0pt), end: (0pt, 80pt), stroke: maroon), [margin.bottom],
      )
    ],
  )
  place(
    dx: 120pt,
    dy: 400pt,
    rect(inset: (y: 0pt), stroke: none, fill: silver)[
      #set align(center)
      #grid(
        columns: 2,
        gutter: 5pt,
        line(start: (0pt, 0pt), end: (0pt, 20pt), stroke: maroon), [space-bottom],
      )
    ],
  )
  place(
    dx: 160pt,
    dy: 400pt - 61pt,
    rect(inset: (y: 0pt), stroke: none, fill: silver)[
      #set align(center)
      #grid(
        columns: 2,
        gutter: 5pt,
        line(start: (0pt, 0pt), end: (0pt, 40pt), stroke: maroon), [expand],
      )
    ],
  )
}

#set page(foreground: foreground)


#rect(width: 100%, height: 100%, fill: aqua)[
  #set align(center)
  body area
]
