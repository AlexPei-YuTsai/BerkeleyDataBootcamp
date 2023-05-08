# Python - Pandas Challenge

## Folder Contents
- A folder with all the CSV data files I access for this assignment.
- A .gitignore file for any Python Notebook checkpoints ~~that I totally did not delete on accident~~ because apparently it's good practice to not share checkpoints with strangers on the internet in case any sensitive information is included.
- A Jupyter Notebook `.ipynb` file containing all the data I processed, charts I generated, and analyses I wrote. Anything insightful and analytical can be found there, so I'll refrain from explaining too much here in this Readme.
  - The you see upon opening the file are internal links that lead to other sections of the Notebook. It doesn't quite work on Github's preview system, but it should work if you fork it and open it with Jupyter or VSCode.

## Code Breakdown
So. Why Pandas? Why can't we use Excel files if the source data is compatible with Excel?
- Because it's so much easier on here.

For this assignment, we have two files to process:
1. One file containing information about 15 schools.
2. Another file containing information of about 39,000 students, each belonging to one of those 15 schools.

You can infer that this assignment involves merging data and linking students of one spreadsheet to schools of another spreadsheet. The assignment is similar to a worksheet as the guidelines specify what they want and what charts they want outputted. We still have to figure out the code that returns the intended result, but the only thing that's purely my own input are my overly long analyses.

With Pandas, you could do all that and more with just a few lines of code because the crazy people who wrote this library did all the heavy lifting for us. The hardest part was learning the format and the syntax of the language because sometimes I got the placement of the `[]` brackets mixed up. However, once you do that, everything pretty much boils down to:
```
thing[column].do_stuff(but="like this tho").do_more_stuff()
```
Once you consolidate this muscle memory into your cerebellum, your main job becomes figuring out what stuff to do to what column of what thing and what optional parameters need to be passed through specifically. Sure, there's the whole Series, DataFrame, and Groups system they got, but it's nothing a few tutorials can't get you started with.

Being a popular framework in one of the world's most approachable programming languages in a time where Machine Learning is trending means that there are a ton of resources that can help you figure out using `.groupby` and `pd.cut()` amongst anything else you need for your task at hand.

As previously mentioned, all analysis is in the attached files, so I'll briefly talk about the resources I used to get to where I needed to be.

### Things that helped a lot
- [Corey Schafer's entire Pandas Playlist](https://www.youtube.com/playlist?list=PL-osiE80TeTsWmV9i9c58mdDCSskIFdDS) basically got me a strong start into learning this framework. If you have a Saturday to spare, put it down on double speed and take some notes. It's a good beginner's course to familiarize yourself with what Pandas can do.
  - From the DataFrames and Series that define this framework to handling, filtering, and sorting cell data, from processing temporal data to aggregating multiple columns with different functions and systematically changing data, this series gave me enough fundamental knowledge for me to confidentally read through Pandas' documentation later on when I needed something that Corey's many edge cases did not cover.
- Speaking of which, [Pandas documentation](https://pandas.pydata.org/docs/dev/index.html) is also very well done. Sometimes it's more efficient to see if StackOverflow has any functions they recommend in particular due to the massive library of methods and functions they have, but they are really helpful to go through (though you might need a separate resource to help visualize some of the parameters they have if you aren't that accustomed to data management).
- [This guy](https://towardsdatascience.com/how-to-merge-pandas-dataframes-221e49c41bec) basically cleared up any Venn Diagram confusion I have with Pandas. 

## Random Thoughts
### May 7, 2023
- It is so easy to lie with data.
- Just by doing averages on something that shouldn't be averaged, I could convince the ignorant of something that's untrue. No wonder we have an obligatory data ethics class. Thank goodness I learned sampling biases and all that cognitive smoke and mirrors back in high school statistics. 
- I think I'm starting to get an idea of what a data scientist's life is going to be like:
  - A lot of data preparation and cleaning because your coworkers might do something dumb like take a picture with their phone of a spreadsheet on a laptop and expect you to do data analysis from that.
  - Statistical analysis and a lot of powerpoint presentations that might as well be video essays to convince your boss that this is what the data is trying to say.
  - It's really just a lot of math, innit? Graph Theory, Linear Algebra, Boolean Logic, Statistical Analysis, and more math.
- It is my younger brother's birthday tomorrow, and I should ease off on my blatant cynicism and disdain for everything I do.
- Godot Engine looks neat. I hope to create things I can be proud of in the near future.
