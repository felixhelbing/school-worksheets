#let data = yaml(sys.inputs.data)

#let template(body) = {
  set page(
    paper: "a4",
    margin: (top: 18mm, bottom: 18mm, left: 18mm, right: 18mm),
  )
  set text(size: 14pt)
  set par(
    leading: 0.8em,
    spacing: 1.2em,
    justify: false,
  )
  body
}
