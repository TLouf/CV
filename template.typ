#import "@preview/fontawesome:0.5.0": *

#let primary = rgb("#355070")
#let secondary = rgb("#5DD9C1")
#let tertiary = rgb("#C1F7DC")

#let cv_section(title) = {
  v(1.2em)
  block({
    // Display a backdrop rectangle.
    move(dx: -1.5%, dy: 0.5%, rect(
      fill: tertiary,
      inset: 0pt,
      outset: (right: 5pt, left: 100pt),
      move(
        dx: 1.5%, dy: -0.5%,
        rect(height: 2em, fill: primary, stroke: 0pt, outset: (left: 100pt, right: 5pt))[
            #text(fill: white)[== #title]
        ]
      )
    ))
  })
}

#let contact_cell = rect.with(
  inset: 2mm,
  fill: primary,
  stroke: (thickness: 2pt, paint: tertiary),
  // width: 100%,
)

#let dated_heading = table.with(
  columns: (75%, 25%),
  rows: 2pt,
  stroke: none,
  inset: 0pt,
  gutter: 0pt,
  align: (left, right),
)
