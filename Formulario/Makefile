PANDOC?=pandoc
MDL?=mdl

.PHONY: all
all: main.pdf

main.pdf: main.markdown meta.yaml
	$(PANDOC)\
	    --standalone\
	    --metadata-file=meta.yaml\
	    -o $@ $<

.PHONY: clean
clean:
	rm -f main.pdf

.PHONY: lint
lint: main.markdown
	$(MDL)\
	    --rules ~MD025,~MD007\
	    $<
