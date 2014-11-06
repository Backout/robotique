TARGET  = report

RM         ?= rm -f
PANDOC      = pandoc
PANDOCFLAGS = --latex-engine=xelatex --listings --number-section \
			  --normalize -s -S

all: clean ${TARGET}.tex
	# sed -ri "s/\{\[\}/\\\[/g" ${TARGET}.tex
	# sed -ri "s/\{\]\}/\\\]/g" ${TARGET}.tex
	# ./cafe.py ${TARGET}.tex
	xelatex ${TARGET}.tex
	xelatex ${TARGET}.tex
	xelatex ${TARGET}.tex

clean:
	${RM} ${TARGET}.aux ${TARGET}.log ${TARGET}.out ${TARGET}.pdf


# .md.tex:
# 	${PANDOC} $< -o $@ ${PANDOCFLAGS}

# .SUFFIXES: .md .tex
#EOF