#import "../resources/preamble.typ" as kult

= Pre-made Characters<sec:pre_made_characters>
== The Artist<the_artist>
#columns(2)[
=== Skills<artist_skills>
#kult.skill-tree()
=== Stability<artist_stability>
#kult.stability
=== Wounds<artist_wounds>
#kult.wounds

===  Background<artist_background>

==== Occupation<artist_occupation>
Stage magician/Etsy shop

==== Close Relationship<artist_close-relationship>
Daughter Yumiko (17), who comes visiting despite you and her mother have split up 2 years ago.

==== Dark Secret: Heir<artist_dark-secret>
You've inherited the antique bookshop of your late father Hiram. You
never wanted to work there, it is boring work for boring people and the
assistant of your father, Mr.~Adkinson, is creepy straight out of the
Addams Family, or Frankenstein. You never understood how he could make a
living selling occult books to students and wiccans. And indeed the
accounting numbers are bright red. Maybe you can sell the ring Lurch
gave you.

==== Notable Items<artist_items>
The ring you inherited

=== Advantages<artist_advantages>

#kult.move((
  title: "Body Awareness",
  label: "body-awareness",
  description: "Your body and mind are as one. Whenever you perform acrobatic or agile feats:",
  attribute: kult.attrs.cool.name,
  success: "Choose one option.",
  complications: "Choose one option, but you expose yourself to danger or incur a cost.",
  failure: "Choose one option, but something goes very wrong. The GM makes a Move.",
  more: [
    *Options:*
      - Escape bindings or restraints.
      - Get past an obstacle (creature or object).
      - Get into or make it through a space you normally wouldn't be able to.
    ]
  )
)

#kult.move((
  title: "Artifact",
  label: "artifact",
  description: [
    Your ring actually possesses mystical powers. Its powers can be activated
    through whispering forbidden words. #emph[I the honourable \<insert name\>,
    pledge to repay this favour with blood or gold, when the time has come.]
    Whenever you activate the object:
  ],
  attribute: kult.attrs.soul.name,
  success: [Choose one option (the GM determines what happens).],
  complications: [
    Choose one option (the GM determines what happens). However, the artifact
    also exacts an additional price (the GM determines what is required).
  ],
  failure: [The artifact does something unexpected, possibly dangerous. The GM makes a Move.],
  more: [
    #strong[Suggested options:]
    - Receive a vision of what threatens you.
    - Get yourself out of a bind.
  ])
)

#kult.move((
  title: "Enhanced Awareness",
  label: "enhanced-awareness",
  description: [
    When you focus your senses at a location where the Illusion is weak, .
    On a success, you have visions about the place and may be able to speak
    to entities tied to it:
  ],
  attribute: kult.attrs.soul.name,
  success: [You can discern clear details regarding the location.],
  complications: [You get some basic impressions regarding the location.],
  failure: [
    The Illusion tears. The veil is lifted temporarily, revealing an
    alternate dimension – the GM determines which one. The PC could be
    sucked into it or something may cross over into our reality. The GM
    makes a Move.
  ],
  more: none
))

=== Disadvantages<artist_disadvantages>
#kult.move((
  title: "Nightmares",
  label: "nightmares",
  description: [
    You suffer from recurring nightmares, probably connected to your Dark
    Secrets. During any scene when you sleep:
  ],
  attribute: kult.attrs.dis.name,
  success: [You sleep in peace.],
  complications: [
    The nightmares torment you. The GM may make a Move for your nightmares.
    For example, you are unable to sleep at all during the night (-1 ongoing
    until you sleep), something follows you back into reality, the
    nightmares provide you insight into the Truth, or you are forced to
    process some trauma (#kult.attrs.will.move) when you wake up.
  ],
  failure: [
    The nightmares take over completely. You are trapped in the dream until
    you find a way to wake up, and everything that happens there also
    directly affects your sleeping body.
  ],
  more: none
))

#kult.move((
  title: "Drug Addict",
  label: "drug-addict",
  description: [
    You are addicted to Alcohol and cocaine. At the beginning of the game
    and whenever you have been using, or have the opportunity to use:
  ],
  attribute: kult.attrs.dis.name,
  success: [You are in control of the urge, for now.],
  complications: [The GM takes 1 Hold.],
  failure: [The GM takes 3 Hold.],
  more:[
    The GM may spend Hold to make a Move for your addiction. For example,
    you cannot resist using the drug, run out of drugs, become indebted to a
    dangerous person, put yourself in danger while under the influence of
    drugs, or ruin some-thing important to you – like a relationship – while
    under the influence.
  ],
))
]
#pagebreak(weak:true)
== The Careerist<the-careerist>
#columns(2)[
==== Occupation<careerist_occupation>
Famous news anchor

==== Close Relationship<careerist_close-relationship>
Your husband Raymond a moderately successful musician, whom accepts you
with all your imperfections, the TV lifestyle with travelling and late
night work and weekends on Monday and Tuesday.

=== Dark Secrets<careerist_dark-secret>
==== Occult Experience<careerist_occult-experience>
One day when you were still studying, you and Raymond snuck into to a
gallery opening, after you had plenty of bubbly, cocaine and snacks, you
went to the toilet. This is where things get fuzzy, there were no
stalls, but 6 persons gathered around a circle leaving one spot for a
seventh person, all of them looked up with their left eye-socket
bleeding and speaking to you in an incoherent guttural language, “Almost
like pigeons“, you thought just before you turned around fleeing running
into the buffet and causing a commotion that got you thrown out. When
you told your story nobody believed you. Raymond pretended for a while,
but deep in your heart you know he believes it was the drugs.

=== Advantages<careerist_advantages>
==== At any Cost<at-any-cost>
Whenever you truly desire something, you may take +2 to a roll by
decreasing .

==== Notorious<notorious>
You are famous in your trade. Whenever you encounter someone who has
likely heard about you, :

/ (): #block[
They know of your reputation; you can decide what they have heard. The
GM will have them act accordingly. You take +2 to your next roll to
Influence them.
]

/ (): #block[
They know of your reputation; you can decide what they have heard.
]

/ (): #block[
They know of your reputation; the GM decides what they have heard.
]

==== Dead Shot<dead-shot>
After the incident you started practising regularly on the shooting
range. Any you deal with a firearm is considered .

=== Disadvantages<careerist_disadvantages>
==== Greedy<greedy>
You are driven by an unquenchable desire for money and wealth, and are
prepared to sacrifice your health, family, and friends to fill the
emptiness inside. When an opportunity to increase your wealth arises,
~to see if you are in control of your desire:

/ (): #block[
You keep your greed in check.
]

/ (): #block[
The black void inside shrieks for more. As long as the opportunity
exists and you do not take it, you suffer −1 ongoing to any rolls you
make.
]

/ (): #block[
You must take advantage of every opportunity to further your wealth, or
reduce .
]

==== Marked<marked>
You are marked by the darkness. The mark can take the shape of a
full-body tattoo, a demonic body part such as a vestigial arm, an extra
eye or mouth, machine parts integrated with your flesh, or similar
manifestations. Whenever you consciously someone, :

/ (): #block[
You are still in control.
]

/ (): #block[
You feed the darkness. The GM takes 1 Hold.
]

/ (): #block[
The darkness gains power over you. The GM takes 3 Hold.
]

The GM can spend Hold to make Moves for the darkness living inside of
you. For example, the darkness feeds on your life energy to sustain
itself, forces you to commit murder in order to replenish its life
energy, takes charge of your body and leaves you with only memory
fragments of what transpired, forces you to harm someone in your
vicinity, or temporarily transforms your body into something inhuman.
You may have to to resist the darkness' influence.
]

== The Criminal<the-criminal>
#columns(2)[
==== Occupation<criminal_occupation>
Mafia enforcer

==== Close Relationship<criminal_close-relationship>
Your Mother Antonia (61), she comes and takes care of you, she knows you
are doing business for the Don, but you are still her goddamn kid, and a
mother will take care of her only child anytime, while she's alive. She
is kind and caring, but also a force of nature when she is offended.

=== Dark Secret: Guilty of Crime<criminal_dark-secret>
You could have said something, but then it maybe would have been you,
who Enzo brought to the garbage compactor. This way it was Jimmy Strong,
not a good guy, definitely not a good guy, but also not guilty of taking
the 50 grand. That was you, you paid your debt for buying painkillers to
the Don with his own money, and a bit went into the renovation of your
Mom's flat.

=== Advantages<criminal_advantages>
==== Burglar<burglar>
Whenever you make use of your expertise in breaking and entering, :

/ (): #block[
Get three options. You may spend them any time during the scene.
]

/ (): #block[
Get two options. You may spend them any time during the scene.
]

/ (): #block[
Get one option, but a problem arises. The GM makes a Move.
]

Options:

- You silently open a locked door within a few moments.

- You neutralize an alarm.

- You bust a lock-box or safe in less than two minutes.

- You avoid being discovered by someone.

- Trick someone into believing you belong here (e.g.~pretend you're a
  security guard) for a limited time.

==== Enforcer<enforcer>
Whenever you credibly threaten someone directly or suggestively, :

/ (): #block[
They must decide to either do what you want or defy you with the
knowledge that you can execute your threat.
]

/ (): #block[
You must give them a third option. Choose one:

- They offer you something they think you'd rather have.

- Retreat from the scene.

- They are terrorised; you have +1 ongoing on all rolls against them
  until they've proven they're not afraid of you.

- They attack you from a disadvantaged position. You take +2 on your
  roll to ~if you counterattack.
]

/ (): #block[
Turns out you didn't have the advantage you thought you did. The GM
makes a Move.
]

==== Escape Artist<escape-artist>
You are a master at slipping away when the shit hits the fan. Whenever
you need to escape a dangerous situation, outline your plan and :

/ (): #block[
You escape without complications.
]

/ (): #block[
You can choose to stay or escape at a cost, such as leaving something
important behind or take something traceable with you. The GM decides
what it is.
]

/ (): #block[
You are only half out the door when you're caught in a really bad spot.
The GM makes a Move.
]

=== Disadvantages<criminal_disadvantages>
====  Addict (Painkillers)<addict-painkillers>
You are addicted to hard drugs; name at least one. In the first game
session and whenever you have been using, or have the opportunity to
use, :

/ (): #block[
You are in control of the urge, for now.
]

/ (): #block[
The GM takes 1 Hold.
]

/ (): #block[
The GM takes 3 Hold.
]

The GM may spend Hold to make a Move for your addiction. For example,
you cannot resist using the drug, run out of drugs, become indebted to a
dangerous person, put yourself in danger while under the influence of
drugs, or ruin some-thing important to you – like a relationship – while
under the influence.

==== Infirm<infirm>
You suffer from high blood pressure. Whenever you are subjected to major
physical or psychological stress, :

/ (): #block[
Your condition is under control.
]

/ (): #block[
Your condition triggers, causing pain and daze ( to all rolls until the
scene ends).
]

/ (): #block[
Your condition is aggravated with life threatening results ().
]
]

== The Scientist<the-scientist>
#columns(2)[
=== Background<scientist_background>
==== Occupation<scientist_occupation>
Professor of Neuroscience at University of Chicago

=== Close Relationship<scientist_close-relationship>
Your Brother, Reverend Benjamin Hall of the Baptist Church at
6#super[th] Street corner 37#super[th] Avenue, he used to be a bit
occupied with his wife and 2 kids (Sarah and Coleen), but he has been
here every Thursday 7pm to 9pm, reading Dragonlance and Tolkien, and
other stuff you enjoyed when you both were children.

=== Dark Secret: Strange disappearances<scientist_dark-secret>
Students vanish from campus, sometimes even during your own lectures.

=== Advantages<scientist_advantages>

#kult.move((
  title: "Sneak",
  label: "sneak",
  attribute: kult.attrs.cool.name,
  description: [Whenever you keep hidden and try to avoid drawing attention to yourself.],
  success: [Get 2 options. You may spend them any time during the scene.],
  complications: [Get 1 option. You may spend them any time during the scene.],
  failure: [Get 1 option, but you manage to attract someone's attention. The GM makes a Move.],
  more:[
    #strong[Options:]
    - Find a secure hiding spot for a while.
    - Find an alternate route to avoid encountering people.
    - Bypass a security system or other obstacle without being noticed.
  ])
)

==== Expert (Neuroscience, Biology)<expert-neuroscience-biology>
You are an expert in Neuroscience and Biology. Whenever you ~something
associated with your expertise, you always get to ask one additional
question, regardless of the outcome, and may ask any questions you want.

==== Scientist<advantage_scientist>
Whenever you an object or entity using the proper equipment, you may
choose from these following questions, in addition to those acquired
through investigation: Questions:

- What properties does this have? (take to any rolls against entities or
  objects of a similar type next time you encounter it).

- How do I make use of this? (take +1 to any rolls associated with using
  the object).

- What is its purpose?

=== Disadvantages<scientist_disadvantages>
==== Phobia (Confined Spaces)<disadvantage_phobia>
You harbour an overpowering fear of something. Choose the stimulus that
frightens you. Whenever you're confronted by the object of your phobia,
you must .

==== Rationalist<disadvantage_rationalist>
You refuse to believe in anything not confirmed as fact by modern
science, even when it is right in front of you. In addition to the
standard effects, whenever you and whenever the Illusion shatters, the
GM may choose one option:

- Your presence nurtures the Illusion, making it more powerful and
  impenetrable.

- Your bewildered psyche starts creating mirror images of familiar
  places and people in the Illusion.

- You attract extra-dimensional entities.

- You consciously deny what you see, even to your own.
]
