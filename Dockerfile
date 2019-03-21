FROM jagregory/pandoc
WORKDIR /source
COPY build .
RUN cabal install pandoc-citeproc
ENTRYPOINT ["pandoc", "--toc", "--filter", "pandoc-citeproc", "-o", "output.pdf"]
# CMD []
