# Latex Boilerplate

My latex template used for taking notes.

## Prerequisites

[Getting Latex](https://www.latex-project.org/get/) first, then install `Pygments` package via `pip`:

```bash
# or use pip install Pygments
$ pip3 install Pygments

# optional for people living in mainland of china - config cpan mirror
cpan[1] > o conf urllist pop http://www.cpan.org/
cpan[2] > o conf urllist push http://mirrors.aliyun.com/CPAN/
cpan[3] > o conf commit
cpan[4] > o conf urllist

# for latexindent deps
$ cpan -fi \
  Log::Log4perl \
  Log::Dispatch::File \
  YAML::Tiny \
  File::HomeDir \
  Unicode::GCString
```

## Useful Scripts

```bash
# build note.tex
./bin/build.sh
# build article.tex
./bin/build.sh article.tex

# clean
./bin/format.sh

# clean generated tmp files
./bin/clean.sh
```

## Some Snippets

```tex
# admonitions
\hint{My hint heading}{\blindtext}
\note{My note heading}{\blindtext}
\attention{My attention heading}{\blindtext}
\caution{My caution heading}{\blindtext}
\danger{My danger heading}{\blindtext}
\error{My error heading}{\blindtext}

# code block
\begin{minted}{<language>}
YOUR CODE HERE
\end{minted}

# inline code
\dic{<language>}{inline-code}

# keystrokes
\keystroke{Enter}

# url
\durl{www.google.com}

# circled number
{\circled{1}, \circled{2}}

# colorful text
\tc{blue}{colorful text}

# space rule
\spacerule

# images
\img{latex}{0.8}
\image{latex}{the title of the image.}
\simage{latex}{the title of the image.}{0.5}

# and more...
```

## Bibliography Examples

```tex
@article{einstein,
  author   = {Albert Einstein},
  title    = {{Zur Elektrodynamik bewegter K{\"o}rper}. ({German})
    [{On} the electrodynamics of moving bodies]},
  journal  = {Annalen der Physik},
  volume   = {322},
  number   = {10},
  pages    = {891--921},
  year     = {1905},
  doi      = {http://dx.doi.org/10.1002/andp.19053221004},
  keywords = {physics}
}

@book{dirac,
  title     = {The Principles of Quantum Mechanics},
  author    = {Paul Adrien Maurice Dirac},
  isbn      = {9780198520115},
  series    = {International series of monographs on physics},
  year      = {1981},
  publisher = {Clarendon Press},
  keywords  = {physics}
}

@online{knuthwebsite,
  author   = {Donald Knuth},
  title    = {Knuth: Computers and Typesetting},
  url      = {http://www-cs-faculty.stanford.edu/~uno/abcde.html},
  addendum = {(accessed: 01.09.2016)},
  keywords = {latex,knuth}
}

@inbook{knuth-fa,
  author    = {Donald E. Knuth},
  title     = {Fundamental Algorithms},
  publisher = {Addison-Wesley},
  year      = {1973},
  chapter   = {1.2},
  keywords  = {knuth,programming}
}
```

## License

This project is open-sourced software licensed under the [MIT License](LICENSE).
