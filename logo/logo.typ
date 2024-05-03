// #import "@preview/cetz:0.2.2"

#let _scale = 1600%

#let config = (
  width: 2em * _scale, 
  height: 2em * _scale,
  margin: 0.0em,
  fill: none,
)
#set page(..config)
#set text(font: ("New Computer Modern"))
#show raw: set text(font: "Monaspace Xenon")

#let lang_color = rgb("#5168c0")
#let red_color = rgb("#c6474e")
#let b_color = rgb("#000")
#let bg_color = rgb("#d8dde3").lighten(80%)
// #rgb("#8245ab")

#show raw.where(lang: "py"): it => [
    #show regex("Y"): set text(fill: lang_color)
    #it
]

#set align(center+horizon)

// #set page(fill: bg_color)
#place(center+horizon)[
  #image("superellipse.svg", width: 110%, height: 110%)
]

#scale(_scale)[
$
#text("{", size: 12pt,  fill: b_color)
#h(-0.1em)
#box(baseline: 8%)[
#set par(leading: 1em-0.618em)
#set text(weight: "black")
```py Y*```
]
#h(-0.12em)
#text("}", size: 12pt, fill: b_color)
$
]