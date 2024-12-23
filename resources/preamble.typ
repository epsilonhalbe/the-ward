#import "@preview/droplet:0.3.1": dropcap
#import "@preview/cetz:0.3.1"

#import "./lib/skills.typ": *
#import "./lib/style.typ": *

#let initialized(body) = dropcap(
  height: 8,
  gap: 1mm,
  font: fonts.title,
  fill: colors.primary,
  text(size: 10pt, body)
)

#let pages = (
  blank: {
    pagebreak()
    page(
      fill: colors.primary,
      background: none,
      numbering: none,
      footer: none,
      []
    )
  },
  toc: {
    show outline.entry.where(level: 1): it => {
      v(12pt, weak: true)
      strong(it)
    }
    outline(
      depth: 2,
      indent: auto,
      fill: line(
        stroke: colors.pale,
        length: 100%,
      ),
    )
  },
  title: (title, author, upd: datetime.today()) => [
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
        font: fonts.title,
        weight: "bold",
        fill: colors.secondary,
        size: 80pt,
        title,
      ) <title>
      #v(3cm)
      #block(
        stroke: (x: colors.secondary + 2pt),
        fill: colors.dark.opacify(5%),
        radius: 5mm,
        outset: 1cm
      )[
        #set text(
          font: fonts.normal,
          fill: colors.light,
          size: 18pt,
        )
        #text(size: 24pt, weight: "bold", author) \
        #text(upd.display()) \
        #text(sys.inputs.at("version", default: ""))
      ]
    ]
  ]
)

#let titlepage = (title, author, upd: datetime.today()) => [
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
        font: fonts.title,
        weight: "bold",
        fill: colors.secondary,
        size: 80pt,
        title,
      ) <title>
      #v(3cm)
      #block(
        stroke: (x: colors.secondary + 2pt),
        fill: colors.dark.opacify(5%),
        radius: 5mm,
        outset: 1cm
      )[
        #set text(
          font: fonts.normal,
          fill: colors.light,
          size: 18pt,
        )
        #text(size: 24pt, weight: "bold", author) \
        #text(upd.display()) \
        #text(sys.inputs.at("version", default: ""))
      ]
    ]
  ]

#let move(
  title: [],
  tag: "",
  description: [],
  attribute: none,
  success: none,
  complications: none,
  failure: none,
  more: none,
) = {
  block(breakable: false)[
    #heading(level:4)[#title #label(tag)]
    #block(stroke: (left: colors.secondary + 2pt), inset: (left: 2mm))[
      #block[#description#if(attribute != none){[ Roll #text(fill: colors.accent, [*+#attribute*])]}]
      #if (success != none and complications != none and failure != none) {
        block[
          #terms.item("(15+)", success)
          #terms.item("(10-14)", complications)
          #terms.item("(9-)", failure)
        ]
      }
      #if (more != none) { more }
    ]
  ]
}


#let stability = block(breakable: false)[
  #let numberbox(number) = box(height: 2.95mm, width: 2.95mm, inset: 0.8mm, stroke: 0.4pt, text(size: 6pt, [#number]))
  #table(
    inset: 0% + 4pt,
    stroke: (x,y) => 
     if (0,2,5,9).contains(y) { (bottom: black + 1pt) },
    columns: (5mm, 20mm, 100% - 25mm),
    align: (x,y) => 
      if x == 2 {
        if (1,3,6).contains(y){ right } else { left}
      } else {
        (center)
      },
    numberbox([10]),[Composed],[],
    numberbox([ 9]),[Uneasy],[*Moderate Stress*],
    numberbox([ 8]),[Unfocused],emph[-1 to #attrs.dis.move rolls],
    numberbox([ 7]),[Shaken],[*Serious Stress*],
    numberbox([ 6]),[Distressed],emph[-1 to #attrs.will.move rolls],
    numberbox([ 5]),[Neurotic],emph[-2 to #attrs.dis.move rolls],
    numberbox([ 4]),[Anxious],[*Critical Stress*],
    numberbox([ 3]),[Irrational],emph[-2 to #attrs.will.move rolls],
    numberbox([ 2]),[Frantic],emph[-3 to #attrs.dis.move rolls],
    numberbox([ 1]),[Unhinged],emph[+1 to #attrs.soul.move rolls],
    numberbox([ 0]),[Broken],emph[The GM makes a Move],
)]

#let wounds = block(breakable: false)[
  #table(
    inset: 0% + 4pt,
    stroke: (x,y) => if ((0,5).contains(y) or x == 0) { (bottom: black + 1pt)},
    align: (left, center),
    columns: (100% - 20mm, 17mm),
    row-gutter: 1mm,
    [*Serious Wound* (-1 ongoing)],[Stabilized],
    [],[$square.stroked.big$],
    [],[$square.stroked.big$],
    [],[$square.stroked.big$],
    [],[$square.stroked.big$],
    [*Moderate Stress* (-1 ongoing)],[],
    [],[$square.stroked.big$],
)]


#let template(doc) = [
  #set page(
    paper: "a4",
    margin: (
      top: 1.5cm,
      inside: 1cm,
      outside: 2.0cm,
      bottom: 1.75cm
    ),
    footer-descent: 1cm,
    footer: context(
      place(
        center + horizon,
        dy: -0.4cm,
        dx: if calc.even(here().page()) { -10.3cm } else { 10.3cm },
        block(width: 1.5cm, height: 1.5cm,
        align(center + horizon,
        text(
            font: fonts.title,
            fill: colors.secondary,
            size: 32pt,
            counter(page).display(),
            )
          )
        )
      )
    ),
    background: context(
      if here().page() == 1 {
        image("img/bg_title.jpg")
      } else if calc.even(here().page()) {
        image("img/bg_left.jpg")
      } else {
        image("img/bg_right.jpg")
      })
  )
  #set par(justify: true)
  #set text(size: 9pt, font: fonts.normal)
  #set list(indent: 1em)
  #set heading(numbering: "1.1")
  #show heading: it => {
    if (it.level == 1) {
      pagebreak(weak:true, to: "even")
      set page(background: image("img/bg_section.jpg"))
      set text(
        font: fonts.title,
        fill: colors.secondary,
        size: 40pt,
      )
      align(horizon, it)
      pagebreak()
    }
    if (it.level == 2) {
      set text(
        font: fonts.title,
        fill: colors.dark.lighten(15%),
        size: 22pt,
      )
      block(width: 100%, stroke: (bottom: colors.primary + 2pt), inset: (bottom: 2mm), it.body)
    }
    if (it.level == 3) {
      block(text(size: 16pt, fill: colors.primary, it.body))
    }
    if (it.level == 4) {
      block(width: 100%, stroke: (bottom: colors.secondary + 2pt),
        box(fill: colors.secondary,inset: 2mm )[$suit.diamond$ #it.body]
      )
    }
  }
  #doc
]
