%.html : %.md
    pandoc -t html5 -S --from markdown-yaml_metadata_block \
		--template=./template-revealjs.html --standalone --section-divs \
		--variable theme="night" --variable transition="convex" \
		-o $@ $<
