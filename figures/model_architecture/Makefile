# Define the directory containing the .tex files
OUT := build

.PHONY: pdf
pdf:
	latexmk -interaction=nonstopmode -outdir="$(OUT)" -pdf -synctex=1 -halt-on-error --shell-escape -jobname="$(jobname)"

.PHONY: clean
clean:
	rm -rf $(filter-out $(wildcard $(OUT)/*.pdf), , $(wildcard $(OUT)/*))

