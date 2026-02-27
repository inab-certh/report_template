// ── Suppress Quarto's default title block ────────────────────────────────────
#let doc-title = "Title..."
#let doc-subtitle = "Subtitle..."
#let doc-short-title = "Short title..."
#let doc-date = "DD Month YYYY"
#let doc-authors = "Author 1, Author 2, ..."
#let doc-authors-prefix = "Prepared by the eHealth Lab @ INAB|CERTH team"
#let doc-study-code = "XXXXX"
#let doc-version = "V0.0"
#let doc-institution = "eHealth Lab \@ INAB|CERTH"
#let doc-study-site = "XXXXX"
#let doc-study-site = "XXXXX"


#let title = none
#let author = none
#let date = none

#set page(
  header: none,
  footer: none,
  margin: (x: 0cm, top: 0cm, bottom: 0cm)
)

// ── Top bar ───────────────────────────────────────────────────────────────────
#rect(
  width: 100%,
  height: 1.2cm,
  fill: rgb("#3C5064"),
  radius: 0pt
)

// ── Title page content (padded to match body margins) ─────────────────────────
#pad(x: 2.5cm)[

  #v(1.5cm)

  // ── Logo ───────────────────────────────────────────────────────────────────
  #align(center)[
    #image("logo.png", width: 5cm)
  ]

  #v(1cm)

  // ── Teal divider ───────────────────────────────────────────────────────────
  #align(center)[
    #line(length: 60%, stroke: 2pt + rgb("#A0C8C8"))
  ]

  #v(0.8cm)

  // ── Title ──────────────────────────────────────────────────────────────────
  #align(center)[
    #text(
      size: 14pt,
      weight: "bold",
      fill: rgb("#3C5064"),
      font: "Montserrat"
    )[#doc-title]
  ]

  #v(0.6cm)

  // ── Subtitle ───────────────────────────────────────────────────────────────
  #align(center)[
    #text(
      size: 11pt,
      weight: "regular",
      fill: rgb("#A0C8C8"),
      font: "Montserrat",
      style: "italic"
    )[#doc-subtitle]
  ]

  #v(0.4cm)

  // ── Authors prefix ─────────────────────────────────────────────────────────
  #align(center)[
    #text(
      size: 8pt,
      weight: "regular",
      fill: rgb("#A0C8C8"),
      font: "Montserrat",
      style: "italic"
    )[#doc-authors-prefix]
  ]

  #v(0.2cm)

  // ── Authors ────────────────────────────────────────────────────────────────
  #align(center)[
    #text(
      size: 9pt,
      weight: "regular",
      fill: rgb("#3C5064"),
      font: "Montserrat"
    )[#doc-authors]
  ]

  #v(0.6cm)

  // ── Teal divider ───────────────────────────────────────────────────────────
  #align(center)[
    #line(length: 60%, stroke: 2pt + rgb("#A0C8C8"))
  ]

  #v(1.5cm)

  // ── Metadata box ───────────────────────────────────────────────────────────
  #align(center)[
    #rect(
      width: 60%,
      stroke: 0.5pt + rgb("#A0C8C8"),
      radius: 4pt,
      inset: 16pt,
      fill: rgb("#A0C8C8").lighten(85%)
    )[
      #set align(left)
      #set text(size: 9pt, font: "Montserrat")
      #grid(
        columns: (auto, 1fr),
        gutter: 6pt,
        text(weight: "bold", fill: rgb("#3C5064"))[Study Code:],
        text(fill: rgb("#3C5064"))[#doc-study-code],
        text(weight: "bold", fill: rgb("#3C5064"))[Version:],
        text(fill: rgb("#3C5064"))[#doc-version],
        text(weight: "bold", fill: rgb("#3C5064"))[Date:],
        text(fill: rgb("#3C5064"))[#doc-date],
        text(weight: "bold", fill: rgb("#3C5064"))[Institution:],
        text(fill: rgb("#3C5064"))[#doc-institution],
        text(weight: "bold", fill: rgb("#3C5064"))[Study Site:],
        text(fill: rgb("#3C5064"))[#doc-study-site],
      )
    ]
  ]

]

// ── Bottom bar (full bleed, outside pad) ──────────────────────────────────────
#place(
  bottom,
  rect(
    width: 100%,
    height: 1.2cm,
    fill: rgb("#3C5064")
  )
)

#pagebreak()

// ── Restore normal page settings ─────────────────────────────────────────────
#set page(
  margin: (x: 2.5cm, y: 2.5cm),
  header: [
    #set text(size: 8pt, fill: rgb("#3C5064"))
    #grid(
      columns: (1fr, 1fr, auto),
      align(left + horizon)[
        #set text(size: 7pt)
        Short title: #doc-short-title \
        Study Code: #doc-study-code \
        Date: #doc-date
      ],
      align(right)[
        #set text(style: "italic")
        eHealth Lab \@ INAB|CERTH
      ]
    )
    #line(length: 100%, stroke: 0.5pt + rgb("#A0C8C8"))
  ],
  footer: [
    #line(length: 100%, stroke: 0.5pt + rgb("#A0C8C8"))
    #set text(size: 7pt, fill: rgb("#3C5064"))
    #grid(
      columns: (1fr, auto),
      align(left)[
        #set text(size: 6pt, style: "italic")
        Copyright XXX (year) eHealth Lab \@ INAB|CERTH. \
        All rights reserved. Unauthorised copying or use of this information is prohibited.
      ],
      align(right)[
        Page #context counter(page).display("1 of 1", both: true)
      ]
    )
  ]
)

// ── Global text and paragraph settings ───────────────────────────────────────
#set text(font: "Montserrat", size: 9pt)
#set par(justify: true, leading: 0.65em)

// ── Heading styles ────────────────────────────────────────────────────────────
#show heading.where(level: 1): it => {
  set text(size: 14pt, weight: "bold", fill: rgb("#3C5064"))
  it
  v(0.3em)
}
#show heading.where(level: 2): it => {
  set text(size: 12pt, weight: "bold", fill: rgb("#3C5064"))
  v(0.5em)
  it
  v(0.2em)
  line(length: 100%, stroke: 0.5pt + rgb("#3C5064"))
  v(0.2em)
}
#show heading.where(level: 3): it => {
  set text(size: 10pt, weight: "bold", fill: rgb("#3C5064"))
  v(0.3em)
  it
  v(0.1em)
}

// ── Figure caption style ──────────────────────────────────────────────────────
#show figure.caption: it => {
  set text(size: 8pt, fill: rgb("#A0C8C8"), style: "italic")
  it
}

// ── Table styles ──────────────────────────────────────────────────────────────
#show table: it => {
  set text(size: 8pt)
  it
}
#show table.cell.where(y: 0): it => {
  set text(weight: "bold", fill: rgb("#3C5064"))
  set block(fill: rgb("#A0C8C8").lighten(70%))
  it
}
