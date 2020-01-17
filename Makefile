PANDOC?=pandoc
MDL?=mdl

.PHONY: all
all: main.pdf main.html

main.pdf: main.markdown meta.yaml
	$(PANDOC)\
	    --standalone\
	    --metadata-file=meta.yaml\
	    --variable=documentclass:article\
	    --variable=margin-top:2cm\
	    --variable=margin-right:2cm\
	    --variable=margin-bottom:2.5cm\
	    --variable=margin-left:2cm\
	    --variable=papersize:a4\
	    -o $@ $<

main.html: main.markdown meta.yaml
	$(PANDOC)\
	    --standalone\
	    --metadata-file=meta.yaml\
	    --to=html5\
	    --section-divs\
	    --toc\
	    --mathml\
	    -o $@ $<

.PHONY: clean
clean:
	rm -f main.pdf
	rm -f main.html

.PHONY: lint
lint: main.markdown
	$(MDL)\
	    --rules ~MD025,~MD007\
	    $<
