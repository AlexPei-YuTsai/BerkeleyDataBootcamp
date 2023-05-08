# Python - Pandas Challenge

## Folder Contents
- A folder with all the CSV data files I access for this assignment.
- A .gitignore file for any Python Notebook checkpoints ~~that I totally did not delete on accident~~ because apparently it's good practice to not share checkpoints with strangers on the internet in case any sensitive information is included.
- A Jupyter Notebook `.ipynb` file containing all the data I processed, charts I generated, and analyses I wrote. Anything insightful and analytical can be found there, so I'll refrain from explaining too much here in this Readme.

## Code Breakdown
So. Why Pandas? Why can't we use Excel files if the source data is compatible with Excel?
- Because it's so much easier on here.

For this assignment, we have two files to process:
1. One file containing information about 15 schools.
2. Another file containing information of about 39,000 students, each belonging to one of those 15 schools.

You can infer that this assignment involves merging data and linking students of one spreadsheet to schools of another spreadsheet.

### Things that helped a lot
- [Corey Schafer's entire Pandas Playlist](https://www.youtube.com/playlist?list=PL-osiE80TeTsWmV9i9c58mdDCSskIFdDS) basically got me a strong start into learning this framework. If you have a Saturday to spare, put it down on double speed and take some notes. It's a good beginner's course to familiarize yourself with what Pandas can do.
  - From the DataFrames and Series that define this framework to handling, filtering, and sorting cell data, from processing temporal data to aggregating multiple columns with different functions and systematically changing data, this series gave me enough fundamental knowledge for me to confidentally read through Pandas' documentation later on when I needed something that Corey's many edge cases did not cover.
- Speaking of which, [Pandas documentation](https://pandas.pydata.org/docs/dev/index.html) is also very well done. Sometimes it's more efficient to see if StackOverflow has any functions they recommend in particular due to the massive library of methods and functions they have, but they are really helpful to go through (though you might need a separate resource to help visualize some of the parameters they have if you aren't that accustomed to data management).
- [This guy](https://towardsdatascience.com/how-to-merge-pandas-dataframes-221e49c41bec) basically cleared up any Venn Diagram confusion I have with Pandas. 
