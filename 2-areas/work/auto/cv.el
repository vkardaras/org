;; -*- lexical-binding: t; -*-

(TeX-add-style-hook
 "cv"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "11pta4paper" "11pt" "a4paper" "sans" "") ("mycv" "")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("fontspec" "") ("carlito" "sfdefault" "lf") ("fontenc" "T1") ("geometry" "top=2in" "bottom=2in" "left=0.5in" "right=0.5in" "showframe" "margin=1in" "a4paper" "margin=1.6cm") ("hyperref" "hidelinks") ("xcolor" "") ("enumitem" "") ("titlesec" "") ("multicol" "")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "href")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "mycv"
    "mycv10"))
 :latex)

