((subject) @injection.content
  (#set! injection.language "markdown.inline"))

((message) @injection.content
  (#set! injection.language "markdown")
  (#set! injection.include-children))
