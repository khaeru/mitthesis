# LaTeX class and templates for MIT theses

This is an experiment to make the [‘official’ class & template](http://web.mit.edu/thesis/tex/) both more idiomatic and more modern. Forks and pull requests welcome!

## Building

Use `make` to produce the `.cls` file and the documentation in `mitthesis.pdf` from `mitthesis.dtx`

Use `make demo` to produce several PDF files in the `demo/` directory using different class options and other settings.

## Requirements

Uses [latexmk](https://ctan.org/pkg/latexmk), which should be included with your TeX distribution; several common TeX/LaTeX packages; and [GNU make](https://www.gnu.org/software/make/).

## TODO
- Use `geometry` to set margins instead of manually adjusting lengths.
- Use `\AtBeginDocument{…}` to set page styles according to package options, instead of requiring that the user do this.
- Move `cover.tex` inline documentation to `mitthesis.dtx`.
- Debug margin indicators for overlong lines in `draft` mode.
- Debug version and date not displayed correctly in generated documentation.
- Pagestyle `myheadings` is defined but apparently unused; possibly delete.
- New `signaturepage` option instead of including `signature.tex`
- New `doubleabstract` option.
- Document or discard `propcover.tex`.
- Upload to CTAN.
