# My Presentations

My Markdown files & assets for various presentations.

    pandoc -t html5 --from markdown-yaml_metadata_block \
     --template=./template-revealjs.html --standalone --section-divs \
     --variable theme="night" --variable transition="convex" \
     ocwp-201407-design.md \
     -o ocwp-201407-design.html
