# LaTeX class and templates for MIT theses

This is an experiment to make the [‘official’ class & template](http://web.mit.edu/thesis/tex/) both more idiomatic and more modern. Forks and pull requests welcome!

## Building

Use `make` to produce the `.cls` file and the documentation in `mitthesis.pdf` from `mitthesis.dtx`

Use `make demo` to produce several PDF files in the `demo/` directory using different class options and other settings. Use `make interactive-demo` to demonstrate an old feature for interactive compilation (you may not want to use this; see the documentation).

## Requirements

Uses [latexmk](https://ctan.org/pkg/latexmk), which should be included with your TeX distribution; several common TeX/LaTeX packages; and [GNU make](https://www.gnu.org/software/make/).

## TODO
- Move `cover.tex` inline documentation to `mitthesis.dtx`.
- Debug version and date not displayed correctly in generated documentation.
- New `signaturepage` option instead of including `signature.tex`
- New `doubleabstract` option.
- Document or discard `propcover.tex`.
- Upload to CTAN.
