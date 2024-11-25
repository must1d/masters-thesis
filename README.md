# Abstract

Global warming poses a significant challenge to our planet.
Emission Inventories have emerged as essential tools for climate mitigation.
However, they may be inaccurate, which motivates the need for inversion techniques that invert atmospheric transport using meteorological data and concentration measurements of greenhouse gases.
Typically, these inversion techniques require accurate priors.
Recent work has successfully investigated the applicability of compressed sensing in urban environments, alleviating the need for such priors.
This thesis builds on these approaches, investigating the applicability of compressed sensing techniques based on machine learning.
In particular, this thesis investigates an approach based on generative models.

A dataset of urban emission flux fields with a resolution of 1km x 1km is built based on the high-resolution TNO-GHGco emission inventories from 2015 and 2018.
Three cities, Munich, Paris, and Zurich, are selected as case studies.
A variational autoencoder (VAE) is then trained on this dataset and evaluated on atmospheric inversion tasks, assuming that the largest emitters and background emissions are known. 

In particular, measurements are taken in simulated experiments with artificial footprints based on Gaussian plume simulations.
The reconstructions are evaluated based on relative error and structural similarity index (SSIM) and compared to a regularized least squares approach and sparse reconstruction algorithms using discrete cosine and discrete wavelet transforms.
Overall, the results show the competitive performance of the VAE with the approaches above for Munich and Zurich, while it fell short for Paris.
The VAE demonstrates a general strength in the structural similarity.

This thesis further experiments with modifications of the signal space the generator can generate, also called the range of the generator, by altering the latent dimension of the VAE and fine-tuning it to the case study cities.
These experiments reveal a trade-off between the size of the range and the search in that space, with a larger range decreasing the representational error; however, more information is required to find solutions.
The fine-tuned models improve the reconstruction performance significantly, beating the other approaches significantly for Munich and Zurich while closing the performance gap for Paris.
However, open work remains to investigate how these fine-tuned models deal with uncertainties in the ground truth.

Finally, the generator is investigated in a controlled benchmark, revealing that this model does not fully capture the emission flux field distribution.
This limitation can likely be attributed to a need for more training data.

Overall, this thesis demonstrates that approaches based on machine learning are promising for urban emission flux reconstruction, with the potential for enhancement through more comprehensive urban datasets.

<br/>

## 👷 How to Build the PDF?

Use the command `make pdf && make clean` to build the PDF at `build/main.pdf`. We recommend using the "latex-workshop" extension for VS Code: https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop.

## 📄 Template
This thesis written based on the template [tum-esm/tum-latex-template](https://github.com/tum-esm/tum-latex-template) which is based on [TUM-Dev/tum-thesis-latex](https://github.com/TUM-Dev/tum-thesis-latex).
