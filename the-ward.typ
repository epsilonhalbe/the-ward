#import "resources/preamble.typ" as kult
#import "in-dexter/in-dexter.typ" as idx
// #import "@preview/in-dexter:0.0.6": *

#show: kult.conf

#kult.titlepage("The Ward", "Martin Heuschober", "0.1.0")
#kult.redpage

= Introduction

In this document the usage of the `in-dexter` package is demonstrated to create
a hand picked #idx.index(fmt: emph, "Hand Picked"), #idx.index([Hand Picked]),
#idx.index([Hand Pickled]), #idx.index("Hand Picked") index. This sample
#idx.index(fmt: strong, "Sample") #idx.index(fmt: strong, "Sample", "liquor")
#idx.index(fmt: emph, "Sample", "blood") document  is quite short, and so is
it's index. #idx.index(initial: (letter: "Symbols", sort-by: "#"), "(+)")

#kult.toc

= The Ward <the-ward>

== foo
#lorem(50)

== foo
#columns(2, lorem(50))

= Index
#columns(
  3,
  idx.make-index(
    title: none,
    outlined: true,
  )
)
