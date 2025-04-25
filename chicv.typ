#import "fontawesome.typ": *

#let chiline() = {
    v(-8pt);
    line(length: 100%, stroke: gray);
    v(-8pt)
}

#let iconlink(
    uri, label: "", icon: link-icon
) = {
    if label != "" {
        link(uri)[#text[#fa[#icon]] #label]
    } else {
        link(uri)[#text[#fa[#icon]]]
    }
}

#let ghrepo(
    repo, add_link: true, icon: true
) = {
    if add_link {
        if icon {
            iconlink("https://github.com/" + repo, label: repo, icon: github)
        } else {
            link("https://github.com/" + repo)[#repo]
        }
    } else {
        [#fa[#icon] #repo]
    }
}

#let cventry(
    tl: lorem(2),
    tr: "",
    bl: "",
    br: "",
    content
) = {
    block(
        inset: (left: 0pt),
        text(weight: "bold", size: 1.14em)[#tl] +
        h(1fr) + tr +
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
        "DejaVu Sans",
        "Source Han Serif SC",
    )
    show heading.where(
        level: 1
    ): set text(
        size: 28pt,
        font: fonts,
        weight: "regular",
    )

    show heading.where(
        level: 2
    ): it => text(
        size: 13pt,
        font: fonts,
        weight: "bold",
        block(
            v(0.35em) + chiline() + v(0.14em) + it + v(0.24em),
        )
    )
    set list(indent: 2pt)

    show link: it => underline(offset: 1.8pt, it)
    set page(margin: (x: 0.7cm, y: 1cm), numbering: "1 / 1")
    set par(justify: true, leading: 0.84em)
    set text(font: fonts, size: 10pt)

    body
}
