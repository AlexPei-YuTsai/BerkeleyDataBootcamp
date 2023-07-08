# Berkeley Data Bootcamp: Project 1
> Wealth vs Quality of Life - Do richer places lead better lives?

> *Disclaimer: This README focuses more on my portion of the group project. Full project, team members, and contribution details can be found in [the original group project repository](https://github.com/AlexPei-YuTsai/BerkeleyDataBootcampProjectONE). Discrepancies between the files of this repository and those of the one linked are a result of my personal cleanup efforts.*

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
> *Detailed explanations can be found within the meticulous annotations and comments of the attached Notebook file. This section is more for the pretty pictures and code snippets I found to be worth explaining.*
### Brief Project Explanation
As a group of five, we are tasked to find datasets and analyze them with the techniques we've learned over the past month and a half. However, as we chose to deal with ZIP Code data and needed more than a typical API's allotted allowance of a 2,000 API calls, we couldn't really effectively apply our knowledge of APIs without flashing our wallets. Fortunately, CSVs were plentiful, so we had everything we needed to get working.

My main contribution is Question 1 of the three main questions asked in this project.

### A Bit of Math Deceit
What's the point of this bit of code here?
```python
test_df["Scaled"] = (test_df[X]-test_df[X].min()+0.01)**math.log(Y, test_df[X].max()-test_df[X].min())
```
Consider the following table of data:
| **Value** | **Difference** | **Exponential** |
|-----------|-----------------|-----------------|
| 40        | 0.01            | 0.001729        |
| 50        | 10.01           | 24.081411       |
| 60        | 20.01           | 62.680074       |
| 70        | 30.01           | 109.704923      |
| 80        | 40.01           | 163.202514      |
| 90        | 50.01           | 222.094385      |
| 100       | 60.01           | 285.675777      |
| 110       | 70.01           | 353.442014      |
| 120       | 80.01           | 425.009976      |
| 130       | 90.01           | 500.076728      |

Suppose the `Value` Column is something we'd like to scale by size such that the dots on a map with the highest value have the biggest dots and dots with the lowest value have the smallest dots. How would they look? The answer: Underwhelming.

![A chart showcasing point size scaling with Holoviews](https://cdn.discordapp.com/attachments/939673945240637450/1127317008476819527/bokeh_plot.png)

Notice how despite the largest value of the blue default values set is more than 3 times larger than the smallest value of the set, the difference is not that apparent because of how areas and geometry work. Similar to how people don't really recognize how an 8-inch radius pizza is almost double the area of a 6-inch radius pizza, the differences in dot sizes are not immediately apparent.

With a little mathematical treatment using the formula below, we can accentuate the differences between the largest and smallest values:
- ${Difference_i} = {Value_i}-({\max(Value)}-{\min(Value)})+0.01$

Using exponents and logarithms, we can also control how big we want the sizes of our biggest dots to be. With the following formula, we can make it so that the smallest data points are closest to zero and the largest data points are closest to some arbitrary point size we like (such as 500):
- ${Exponential_i} = {Difference_i}^{\log _{\max(Value)-\min(Value)}500} $

Although we're intentionally misleading people with this technique, I found it necessary in order for our specific type of eye-candy data visualization to accurately convey its discrepancies.

### Almost Choropleth Charts
![A map of New York where each point represents a ZIP Code and the size scales with the obesity rate of each ZIP Code's people](https://cdn.discordapp.com/attachments/939673945240637450/1127333756634673292/image.png)

![A map of New York where each point represents a ZIP Code and the size scales with the obesity rate of each ZIP Code's people](https://cdn.discordapp.com/attachments/939673945240637450/1127333811731050526/image.png)

Each of the dots above represents a ZIP Code in the state of New York with each dot's size corresponding to a health outcome indicated in the chart's title and the color corresponding to the ZIP Code's measure of wealth. Without manually exaggerating the dot sizes, it would be harder to see how the correlations on a graph map over to a geographical view of reality. Notably, with the higher correlation of the Obesity chart, you can notice the darker, richer dots around Manhattan being smaller than the rest of their peers probably because the people there can actually afford to shop at Whole Foods and buy whatever healthy produce the median worker cannot afford. In contrast, dot sizes are about even throughout the state regardless of how much people earn.

This shows that you can pick a lot of the luxuries in life to stave off various forms of illness, but death comes for us all.

## Resources that helped a lot
Really, it's mainly just reading the docs for this project. No special tutorials here because we were mainly just applying what we've previously learned into a complete package. Any special code or ingenuity is generated from my previous experiences with mathematics and data visualization trickery.

## Random Thoughts
> Project completed on June 6, 2023
- After spending so much time looking into ZIP Code affluence and health outcome correlations, I am incredibly grateful for the fortune I am afforded and this experience has only reinforced my personal views on the current socioeconomic status quo.
- I would like to learn some kind of GIS mapping system and properly make a [Choropleth map](https://en.wikipedia.org/wiki/Choropleth_map) some time. There are many frameworks that make these very doable, but I opted against doing them as we were running on limited time and learning brand new frameworks didn't feel too practical given our constraints and lack of overall experience.
