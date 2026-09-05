;; -*- lexical-binding: t; -*-

(TeX-add-style-hook
 "VasilisKardaras_cv"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "") ("mycv" "")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("hyphenat" "none") ("carlito" "sfdefault" "lf") ("fontenc" "T1") ("geometry" "a4paper" "margin=1.6cm") ("hyperref" "hidelinks") ("xcolor" "") ("enumitem" "") ("titlesec" "") ("multicol" "") ("comment" "") ("microtype" "") ("xurl" "")))
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

