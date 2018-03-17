INS         = source/mitthesis.ins
PACKAGE_SRC = $(wildcard source/*.dtx)
PACKAGE_CLS = $(notdir $(PACKAGE_SRC:%.dtx=%.cls))
DOC_PDF     = $(notdir $(PACKAGE_SRC:%.dtx=%.pdf))

CACHE_DIR   := $(shell pwd)/.latex-cache
COMPILE_TEX := latexmk -pdf -r $(shell pwd)/.latexmkrc

all: cls doc

cls: $(PACKAGE_CLS)

doc: $(DOC_PDF)

clean: clean-cache clean-cls clean-doc

clean-cache:
	@rm -rf "$(CACHE_DIR)"

clean-cls:
	@rm -f $(PACKAGE_CLS)

clean-doc:
	rm -f $(DOC_PDF)

$(CACHE_DIR):
	@mkdir -p $(CACHE_DIR)

$(PACKAGE_CLS): $(PACKAGE_SRC) $(INS) | clean-cache $(CACHE_DIR)
	@cd $(dir $(INS)) && latex -output-directory=$(CACHE_DIR) $(notdir $(INS))
	@cp $(addprefix $(CACHE_DIR)/,$(PACKAGE_CLS)) .

$(DOC_PDF): $(PACKAGE_SRC) $(INS) | clean-cache $(CACHE_DIR)
	@cd $(CACHE_DIR) && $(COMPILE_TEX) ../$(PACKAGE_SRC)
	@cp $(addprefix $(CACHE_DIR)/,$(DOC_PDF)) .
