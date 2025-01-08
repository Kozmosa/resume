#import "fontawesome.typ": *

#let chiline() = {
    v(-8pt);
    line(length: 100%, stroke: gray);
    v(-8pt)
}

#let iconlink(
    uri, text: "", icon: link-icon
) = {
    if text != "" {
        link(uri)[#fa[#icon] #text]
    } else {
        link(uri)[#fa[#icon]]
    }
}

#let ghrepo(
    repo, add_link: true, icon: true
) = {
    if add_link {
        if icon {
            iconlink("https://github.com/" + repo, text: repo, icon: github)
        } else {
            link("https://github.com/" + repo)[#repo]
        }
    } else {
        [#fa[#icon] #repo]
    }
}

#let cventry(
    tl: lorem(2),
    tl_comments: "",
    tr: "",
    bl: "",
    br: "",
    content
) = {
    block(
        inset: (left: 0pt),
        text(weight: "bold", size: 11pt)[#tl] + text(font: ("Palatino", "Kaiti SC"))[#tl_comments] + h(1fr) + tr +
        linebreak() +
        if bl != "" or br != "" {
            bl + h(1fr) + br + linebreak()
        } +
        content
    )
}

// submit, post
#let redact(alter: none, mark: false, color: black, body) = {
    let level = sys.inputs.at("level", default: none);
    if level == "submit" {
        body
    } else if level == "post" {
        if alter == none and mark {
            box(hide(body), fill: color)
        } else if alter == none and not mark {
            box(fill: color)[(missing)]
        } else {
            alter
        }
    } else {
        box(fill: color)[(missing)]
    }
}

#let chicv(body) = {
    let fonts = (
        "Palatino",
        "Source Han Serif SC",
        "Source Han Serif",
    )
    show heading.where(
        level: 1
    ): set text(
        size: 23pt,
        font: fonts,
        weight: "light",
    )

    show heading.where(
        level: 2
    ): it => text(
        size: 12pt,
        font: fonts,
        weight: "bold",
        block(
            chiline() + it,
        )
    )
    set list(indent: 2pt)

    show link: it => underline(offset: 1.8pt, it)
    set page(margin: (x: 0.5cm, y: 0.75cm),)
    set par(justify: true, leading: 0.8em)
    set text(font: fonts, size: 9.5pt)
    set block(spacing: 0.9em)

    body
}
