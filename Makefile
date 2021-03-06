SRC = title.md numbapro.md lab1.md lab2.md
MAKEPDF = pandoc -V geometry:margin=1in
MAKEHTML = pandoc --self-contained

TARGET = labslides.pdf lab1.html lab1.pdf lab2.html lab2.pdf

all: $(TARGET)

labslides.pdf: labslides.md labslides-lab1.md labslides-lab2.md
	$(MAKEPDF) -t beamer $+ -o $@

lab1.html: lab1.md
	$(MAKEHTML) $+ -o $@

lab1.pdf: lab1.md
	$(MAKEPDF) $+ -o $@

lab2.html: lab2.md
	$(MAKEHTML) $+ -o $@

lab2.pdf: lab2.md
	$(MAKEPDF) $+ -o $@

clean:
	rm -f $(TARGET)
