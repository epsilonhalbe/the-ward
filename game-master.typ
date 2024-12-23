#import "./resources/preamble.typ" as kult
#show: kult.template

#counter(page).update(1)
#kult.pages.title.with(
  "The Ward",
  "Martin Heuschober"
)()

#kult.pages.blank
#kult.pages.blank

#counter(page).update(1)
#include("./cha/01_intro.typ")
#include("./cha/02_pre-gens.typ")
#include("./cha/03_player-map.typ")
#include("./cha/04_gm-section.typ")
#include("./cha/05_story.typ")
#include("./cha/06_objects-and-maps.typ")
#include("./cha/07_credits.typ")


#bibliography("./resources/bibliography.bib")
