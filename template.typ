#import "@preview/fontawesome:0.5.0": *

#let dark_blue = rgb("#1e3658")
#let light_blue = rgb("#447a9d")
#let pale_green = rgb("#f1faee")
#let burnt_sienna = rgb("#d15306")


#let cv_section(title) = {
  block({
    // Display a backdrop rectangle.
    move(dx: -1.5%, dy: 0.5%, rect(
      fill: pale_green,
      inset: 0pt,
      outset: (left: 100pt),
      move(
        dx: 1.5%, dy: -0.5%, 
        rect(height: 2em, fill: dark_blue, stroke: 0pt, outset: (left: 100pt, right: 10pt))[
            #text(fill: white)[== #title]
        ]
      )
    ))
  })
}

#let contact_cell = rect.with(
  inset: 2mm,
  fill: light_blue,
  stroke: (thickness: 2pt, paint: pale_green),
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
