TEXFILES := backend/backend.tex \
			capstone/capstone.tex \
			career-success/career_success.tex \
			cloud/cloud.tex \
			databases/databases.tex \
			fundamentals/fundamentals.tex \
			group-project/group_project.tex \
			infrastructure/infrastructure.tex \
			js-ts/js_and_ts.tex \
			program/syllabus.tex \
			prototyping/prototyping.tex \
			react/react.tex \
			web-design/web_design.tex

PDFS := $(TEXFILES:.tex=.pdf)

all: $(PDFS)

%.pdf: %.tex
	@echo "Compiling $<"
	@cd $(dir $<) && pdflatex $(notdir $<)

clean:
	@rm -f */*.aux */*.log */*.out */*.toc */*.pdf

.PHONY: all clean
