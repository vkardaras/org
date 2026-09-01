;; -*- lexical-binding: t; -*-

(TeX-add-style-hook
 "fonts_from_package"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("calligra" "") ("uncial" "") ("fontenc" "T1") ("beramono" "scaled")))
   (TeX-run-style-hooks
    "latex2e"
    "article"
    "art10"
    "calligra"
    "uncial"
    "fontenc"
    "beramono"))
 :latex)

