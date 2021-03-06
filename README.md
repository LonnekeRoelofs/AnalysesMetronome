## Analyses of tidal prism results Metronome generated by Nays2D

# Introduction
In the future this tool can be used for analysing and plotting tidal prism result from the Metronome tidal flume generated by the Nays2D model. The project is in the starting phase of development and is far from finished. It should therefore be used with caution. 

In the Metronome tidal flume scaled estuaries (tidally influenced river mouths) are created by a tilting motion which causes water flow and sand transport to be bi-dirictional. This enables the formations of ebb and flood channels and tidal bars. With the addition of mud and vegetation even scaled saltmarshes and peat swams can be created. During the exeperiments stereophotography is used to create digital elevation models (DEMs). These DEMs are used in a hydrodynamic model (Nays2D) to calculate flow and discharge through the experimental estuary throughout the experiment. The results of these calculations on tidal discharge and tidal prism can be analysed with this tool.

# Installation
Download the data, folder structure and scripts to your own computer.

Make sure you have MATLAB installed (project was created on a Windows machine in MATLAB 2018b, 9.5.0.1049112 (R2018b) Update 3).

Run the CompareTPtime.m script from the src folder. Make sure you select the desired experiment when running the code. 

## Project organization
- PG = project-generated
- HW = human-writable
- RO = read only
```
.
├── .gitignore
├── CITATION.md
├── LICENSE.md
├── README.md
├── requirements.txt
├── bin                <- Compiled and external code, ignored by git (PG)
│   └── external       <- Any external source code, ignored by git (RO)
├── config             <- Configuration files (HW)
├── data               <- All project data, ignored by git
│   ├── processed      <- The final, canonical data sets for modeling. (PG)
│   ├── raw            <- The original, immutable data dump. (RO)
│   └── temp           <- Intermediate data that has been transformed. (PG)
├── docs               <- Documentation notebook for users (HW)
│   ├── manuscript     <- Manuscript source, e.g., LaTeX, Markdown, etc. (HW)
│   └── reports        <- Other project reports and notebooks (e.g. Jupyter, .Rmd) (HW)
├── results
│   ├── figures        <- Figures for the manuscript or reports (PG)
│   └── output         <- Other output for the manuscript or reports (PG)
└── src                <- Source code for this project (HW)

```


## License

This project is licensed under the terms of the [MIT License](/LICENSE.md)
