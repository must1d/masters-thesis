# LaTeX Template for ESM Theses

This template was originally derived from **https://github.com/TUM-Dev/tum-thesis-latex** and later modified to fit the **ESM** style. Always check the [current formatting guidelines][thesis-guidelines] for the School of Computation, Information and Technology (CIT) before you hand your thesis in.

<br/>

## 👷 How to Build the PDF?

Use the command `make pdf && make clean` to build the PDF at `build/main.pdf`. We recommend using the "latex-workshop" extension for VS Code: https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop.

<br/>

## 🗃️ Repository Structure

-   **`template/`** contains files used to generate this template.
-   **`meta/`** contains data like your bibliography or a glossary.
-   **`chapters/`** contains all the sections "acknowledgement", "abstract" and all chapters of your actual thesis.
-   **`build/`** contains the generated PDF.
-   **`.vscode/`** contains settings for the "latex-workshop" extension

<br>

## LaTeX Features

Use SVG images: `\includesvg[height=50mm]{some-image.svg}` (you have to have inkscape installed for that).
