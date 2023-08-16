#import "template.typ": *
#set page(
  margin: (left: 1.4cm, right: 1.4cm, top: 1.4cm, bottom: 1.4cm),
  background: place(left + top, rect(
    fill: light_blue,
    height: 100%,
    width: 11.5mm,
  ))
)
#set text(12pt, font: "CMU Sans serif")

#rect(
  width: 100%, height: 30mm, fill: dark_blue, stroke: (thickness: 5pt, paint: pale_green),
  outset: (x: 100pt, top: 100pt),
  inset: (y: -14pt)
)[
  #table(
    columns: (37%, 28%, 25%),
    stroke: 0pt,
    inset: 0pt,
    gutter: 5%,
    align: horizon,
    table(
      rows: (26pt, 6pt, 20pt),
      stroke: 0pt,
      inset: 0pt,
      gutter: 10pt,
      align: (center + bottom, center + horizon, center + top),
      text(26pt, weight: "bold", fill: white)[Thomas Louf],
      line(length: 100%, stroke: (thickness: 3pt, paint: pale_green)),
      text(20pt, weight: "bold", fill: white)[PhD candidate],
    ),
    contact_cell[
      #text(12pt, fill: white)[
        #par(leading: 5pt)[
          === Profiles
          #link("https://github.com/TLouf")[#gh_icon TLouf]
          \ #link("https://tlouf.github.io")[#link_icon tlouf.github.io]
          \ #link("https://orcid.org/0000-0002-8785-8063")[#orcid_icon 0000-0002-8785-8063]
        ]
      ]
    ],
    contact_cell[
      #text(12pt, fill: white)[
        #par(leading: 5pt)[
          === Contact
          #link("mailto:tlouf@pm.me")[#mail_icon tlouf\@pm.me]
          \ #link("https://twitter.com/t_louf")[#twitter_icon t_louf]
          \ #link("https://fosstodon.org/@tlouf")[#mastodon_icon tlouf\@fosstodon.org]
        ]
      ]
    ]
  )
]


#cv_section("Education")

#dated_heading([=== PhD programme in Physics of Complex Systems], [Nov 2019 - Sep 2023])
#v(1em)
- Institute for Cross-Disciplinary Physics and Complex Systems (IFISC), Palma, Spain
  \ With José J. Ramasco and David Sánchez as supervisors of my thesis, entitled "Complexity in sociolinguistics: exploring the interplay between geography, culture and the social fabric".
  \ María de Maeztu Unit of Excellence PhD position.
- #dated_heading(
  [Department for Network and Data Science (DNDS), CEU, Vienna, Austria],
  [#text(10pt)[Sep 2022 - Dec 2022]]
)
  Research stay with Márton Karsai for a project investigating the interplay between socio-economic inequalities and language. Funded with a competitive mobility grant from Santander.

#dated_heading([=== MSc in Physics], [Sep 2018 - Sep 2019])
Imperial College, London, UK
\ 12-month taught programme with selected courses in Complexity & Networks, Computational Physics, Atmospheric Physics, General Relativity (among others).
\ Thesis with Dr. Tim Evans entitled "An axiomatic study of spatial interaction models".

#dated_heading([=== Diplôme d'Ingénieur], [Sep 2015 - Sep 2019])
Ecole Centrale de Lyon, France
\ Broad engineering training with selected courses in quantum physics, nuclear engineering and
observation of matter. Last year at Imperial College as part of a joint degree programme.


#dated_heading([=== Preparatory classes to Grandes Écoles exams], [Sep 2013 - Sep 2015])
Collège Stanislas, Paris, France

#v(1fr)

#cv_section("Past experiences")

#dated_heading([=== Data science intern], [Jan 2018 - Jul 2018])

HousingAnywhere, Rotterdam, Netherlands
\ I analyzed operational data from a large SQL database to provide insights to other teams and also carried out machine learning projects at an exploratory phase.


#dated_heading([=== Research intern], [May 2017 - Oct 2017])
CEA Irfu, Saclay, France
\ I investigated the potential of Micromegas gaseous detectors for X-ray spectro-polarimetry. I performed experiments to test its performance and analysed data collected at the SOLEIL synchrotron to calibrate a detector.

#v(1fr)



#pagebreak()



#cv_section("Publications")
#v(-1em)
#for work in yaml("me.yaml").at("references").sorted(
  key: w => str(w.issued.at(0).at("year", default: w.issued.at(0).at("literal", default: "")))
).rev() {
  if work.type in ("chapter", "book", "article", "article-journal", "paper-conference") {
    par(leading: 0pt)[
    #text(0pt, fill: white)[#cite(work.id)]]
  }
}
#bibliography("me.bib", title: none)


#v(1fr)


#cv_section("Talks")
#for talk in json("talks.json").sorted(key: it => it.date).rev() {
  if "venueurl" in talk {
    link(talk.venueurl)[=== #talk.venue #talk.date.slice(0, 4)]
  } else [
    === #talk.venue #talk.date.slice(0, 4)
  ]
  [
    #talk.title
    \ #talk.authors
  ]
}

#v(1fr)


// don't break page within short sections
#block(breakable: false)[
#cv_section("Technical skills")

=== Programming (Python)
(Geospatial) data processing, (interactive) visualization, parallel computing on a server cluster, natural language processing, machine learning.
I publish all code used in my projects in GitHub repositories, develop small packages (querier, spylt) and contribute occasionally to libraries like #link("https://github.com/geopandas/geopandas/pulls?q=author%3Atlouf")[GeoPandas#super_ext_link_icon], #link("https://github.com/pandas-dev/pandas/pulls?q=author%3Atlouf")[pandas#super_ext_link_icon] and #link("https://github.com/RaRe-Technologies/gensim/pulls?q=author%3Atlouf")[Gensim#super_ext_link_icon].

=== Programming (others)
Version control with git, Linux proficiency, documentation writing with Sphinx, Rust (beginner).

=== Communication
Fluent in French, English and Spanish. Proficient with LaTeX, Inkscape, GIMP.



#cv_section("Academic service")

- Elected member of the advisory board of the #link("http://yrcss.cssociety.org/")[young researchers of the Complex Systems Society], 2023-2025
- Co-organiser of the #link("https://sites.google.com/view/css-ccs23/home")[Computational Social Science satellite of the Conference on Complex Systems], starting 2023
- Served as a reviewer for Physica A and the Journal of Linguistic Geography.
- Helped the organization of the Conference on Complex Systems 2022 in Palma.



#cv_section("References")

- Dr. José J. Ramasco (PhD supervisor), IFISC, #link("mailto:jramasco@ifisc.uib-csic.es")
- Prof. David Sánchez (PhD supervisor), IFISC, #link("mailto:david.sanchez@uib.es")
- Dr. Márton Karsai (collaborator), CEU DNDS, #link("mailto:karsaim@ceu.edu")

]
