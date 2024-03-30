FILE := main
OUT  := build

.PHONY: pdf
pdf:
	latexmk -interaction=nonstopmode -outdir="$(OUT)" -pdf -synctex=1 -halt-on-error --shell-escape -jobname="$(jobname)" $(FILE)

.PHONY: watch
watch:
	latexmk -interaction=nonstopmode -outdir="$(OUT)" -pdf --shell-escape -pvc -halt-on-error -jobname="$(jobname)" $(FILE)

.PHONY: clean
clean:
	rm -rf $(filter-out $(wildcard $(OUT)/*.pdf) $(wildcard $(OUT)/*.synctex.gz), $(wildcard $(OUT)/*))

.PHONY: purge
purge:
	rm -rf $(OUT)
