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
TARGET_DIR := syllabi

all: $(PDFS) gather

%.pdf: %.tex
	@echo "Compiling $<"
	@cd $(dir $<) && pdflatex $(notdir $<)

gather: $(PDFS)
	@echo "Moving PDFs to $(TARGET_DIR)"
	@mkdir -p $(TARGET_DIR)
	@rm -f $(TARGET_DIR)/*
	@cp $^ $(TARGET_DIR)

clean:
	@rm -f */*.aux */*.log */*.out */*.toc */*.pdf
	@rm -f $(TARGET_DIR)/*

.PHONY: all clean
