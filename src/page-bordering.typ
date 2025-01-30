
#let page-bordering(
  page-args: (
    margin: (left: 30pt, right: 30pt, top: 60pt, bottom: 60pt),
  ),
  expand: 15pt,
  space-top: 15pt,
  space-bottom: 15pt,
  strokeHeader: none,
  strokeFooter: none,
  header: "",
  footer: "",
  body,
) = {
  if "margin" not in page-args {
    page-args.insert("margin", (left: 30pt, right: 30pt, top: 60pt, bottom: 60pt))
  }
  if not (
    type(page-args.margin) == dictionary
      and "left" in page-args.margin
      and "right" in page-args.margin
      and "top" in page-args.margin
      and "bottom" in page-args.margin
  ) {
    [`pagebordering` failed.

      *Please set page-args.margin as dictionary of 4 direction.*

      e.g.
      ```
      page-args: (
        margin: (left: 30pt, right: 30pt, top: 60pt, bottom: 60pt),
      ),
      ```
    ]
    return
  }
  set page(..page-args)

  let (left: ml, right: mr, top: mt, bottom: mb) = page-args.margin
  let insetL = ml - expand
  let insetR = mr - expand
  set page(
    background: {
      grid(
        rows: (mt - expand, 100% - mt + expand * 2 - mb, mb - expand),
        rect(
          width: 100%,
          height: 100%,
          inset: (left: insetL, right: insetR, bottom: 0pt, top: space-top),
          stroke: strokeHeader,
          outset: (left: -insetL, right: -insetR, top: -space-top),
        )[
          #header
        ],
        rect(width: 100%, height: 100%, outset: (left: -insetL, right: -insetR)),
        rect(
          width: 100%,
          height: 100%,
          inset: (left: insetL, right: insetR, top: 0pt, bottom: space-bottom),
          stroke: strokeFooter,
          outset: (left: -insetL, right: -insetR, bottom: -space-bottom),
        )[
          #footer
        ],
      )
    },
  )
  body
}
