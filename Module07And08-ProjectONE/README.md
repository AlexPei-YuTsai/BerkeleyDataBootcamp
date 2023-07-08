# Berkeley Data Bootcamp: Project 1
> Wealth vs Quality of Life - Do richer places lead better lives?
> *Disclaimer: This README focuses more on my portion of the group project. Full project, team members, and contribution details can be found in [the original group project repository](https://github.com/AlexPei-YuTsai/BerkeleyDataBootcampProjectONE). Discrepancies between the files of this repository and those of the one linked are a result of my personal cleanup efforts.

## Folder Contents
- A `Wealth vs Quality of Life.ipynb` Jupyter Notebook file with all of our data management, coding, visualizations, and analysis.
- A `Resources` folder containing all of the CSV files and data utilized in that Notebook file.
- A `Results` folder containing some exported visuals as HVPlot visualizations don't really appear unless the code is run.
- A `.gitignore` file that ignores common things like PyCache, Jupyter Notebook checkpoints, and, most importantly, API Keys.

### Installation/Prerequisites
- Make sure you can run Python. The development environment we used was set-up with:
```
conda create -n dev python=3.10 anaconda -y
```
#### Imported Modules
- Installing via the conda command given should give you access to all of the script's modules locally. However, if you don't have them, be sure to grab yourself the following libraries:
  - [Pandas](https://pandas.pydata.org/docs/getting_started/install.html), [NumPy](https://numpy.org/install/), [SciPy](https://scipy.org/install/), and [MatPlotLib](https://matplotlib.org/stable/users/installing/index.html) for your basic dataframe and statistical manipulation.
  - [Requests](https://requests.readthedocs.io/en/latest/), [hvPlot](https://hvplot.holoviz.org/getting_started/installation.html), and [HoloViews](https://holoviews.org/install.html) for all the geographical visualization and API-related work to be done.
  - OPTIONAL: [Sodapy](https://pypi.org/project/sodapy/) is needed for the medical data we access *if* you choose to access their data through their API. It seems that an API key is NOT necessary here. Due to throttling limits, we'll be using the good ol' fashioned way of making dataframes from CSV data we download.
#### API Keys
Due to general inconvenience, throttling limits, and pricing concerns, we have not found an API worth using for the purposes of our project. However, all of the CSV files we used can be found in the `Resources` folder and the sources *(for Question 1)* can be found listed below:
- [IRS Tax Data](https://www.irs.gov/statistics/soi-tax-stats-individual-income-tax-statistics-2020-zip-code-data-soi)
- [ZIP to map coordinates conversion data](https://simplemaps.com/data/us-zips)
- [CDC PLACES Data](https://chronicdata.cdc.gov/500-Cities-Places/PLACES-ZCTA-Data-GIS-Friendly-Format-2022-release/kee5-23sr)

## Code Showcase
> *Detailed explanations not found here can be found within the meticulous annotations and comments of the Notebook file. This section is more for the pretty pictures and insights I found to be interesting.*
### Brief Project Explanation
As a group of five, we are tasked to find datasets and analyze them with the techniques we've learned over the past month and a half. However, as we chose to deal with ZIP Code data and needed more than a typical API's allotted allowance of a 2,000 API calls, 

## Resources that helped a lot
Really, it's mainly just reading the docs for this project. No special tutorials here because we were mainly just applying what we've previously learned into a complete package. Any special code or ingenuity is generated from my previous experiences with mathematics and data visualization trickery.

## Random Thoughts
> Project completed on June 6, 2023
- After spending so much time looking into ZIP Code affluence and health outcome correlations, I am incredibly grateful for the fortune I am afforded and this experience has only reinforced my personal views on the current socioeconomic status quo.
