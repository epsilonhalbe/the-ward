#let red = rgb("#9b201f")
#let gold = rgb("#968c6a")
#let blue = rgb("#2a548b")
#let textcolor = rgb("#444444")

#let redpage = [
  #pagebreak()
  #set page(
    fill: red,
    background: none,
    numbering: none,
    footer: none,
  )
]

#let toc = {
  show outline.entry.where(level: 1): it => {
    v(12pt, weak: true)
    strong(it)
  }
  outline(
    depth: 2,
    indent: auto,
    fill: line(
      stroke: rgb("999"),
      length: 100%,
    ),
  )
}

#let titlepage(title, author, version, upd: datetime.today()) = [
  #set document(
    title: title,
    author: (author),
    keywords: ("KULT: divinity lost", "TTRPG", "scenario", "horror"),
    date: upd
  )
  #set page(numbering: none, footer: none)
  #counter(page).update(1)
  #align(center + horizon)[
    #text(
      font: "Mathison",
      weight: "bold",
      fill: red,
      size: 64pt,
      title,
    ) <title>
    #v(3cm)
    #set text(
      font: "Ubuntu",
      fill: white,
      size: 24pt,
    )
    #text(author) \
    #text(version) \
    #text(upd.display())
  ]
]

#let conf(doc) = [
  #set page(
    paper: "a4",
    numbering: "1",
    footer-descent: 1cm,
    footer: locate(loc => 
      place(
        center + horizon,
        dx: if calc.odd(loc.page()) { -9.75cm } else { 9.75cm },
        text(
          font: "Mathison",
          fill: gold,
          size: 32pt,
          counter(page).display(),
        )
      )
    ),
    background: {
      locate( loc =>
      if loc.page() == 1 {
        image("img/bg_title.jpg")
      } else if calc.odd(loc.page()) {
        image("img/bg_left.jpg")
      } else {
        image("img/bg_right.jpg")
      })
    }
  )
  #set text(font: "Ubuntu")
  #set heading(numbering: "1.1")
  #show heading.where(level: 1): it => [
    #pagebreak(weak:true, to: "odd")
    #{
      set page(
        background: image("img/bg_section.jpg"),
      )
      set text(
        font: "Mathison",
        fill: gold,
        size: 40pt,
      )
      align(
        horizon,
        it
      )
    }
    #pagebreak()
  ]
  #doc
]
