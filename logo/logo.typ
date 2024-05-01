// #import "@preview/cetz:0.2.2"

#let config = (
  width: 4em, 
  height: 4em,
  margin: 0.0em,
  fill: none,
)
#set page(..config)
#set text(font: ("New Computer Modern"))
#show raw: set text(font: "Monaspace Xenon")

#let lang_color = rgb("#5168c0")
#let b_color = rgb(0, 0, 0)
#let bg_color = rgb("#d8dde3").lighten(80%)
// #rgb("#8245ab")

#show raw.where(lang: "py"): it => [
    #show regex("\b(lang)\b"): k => text(
      fill: rgb(lang_color), k)
    #it
]

#set align(center+horizon)

#set page(fill: bg_color)
#place(center+horizon)[
  #let radius = 4em
  #box(
    width: radius,
    height: radius,
    fill: bg_color,
    radius: radius / 4
  )
]

$
#text("{", size: 16pt,  fill: b_color)
#box(baseline: 25%)[
#set par(leading: 0.3em)
#set text(weight: "black")
```py yield```\
```py *lang```
]
#text("}", size: 16pt, fill: b_color)
$