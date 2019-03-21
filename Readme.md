# Markdown to PDF

## Usage

Give it a list of markdown files and mount the directory you want to use to /source:

Also works with any Bibtex bibliographies (through pandoc-citeproc) and images you have in the folder.

```
docker run --rm -v $(pwd):/source boardfish/md2pdf *.md
```

It's also possible to set the `date` and other variables inline:

```
docker run --rm -v $(pwd):/source boardfish/md2pdf --variable date=$(date "+%Y-%m-%d") *.md
```
