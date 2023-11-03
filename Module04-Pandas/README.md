# Python - Pandas Challenge
> How do I merge multiple sheets of raw data and efficiently process and aggregate them into digestible insights?
## Folder Contents
- A folder with all the CSV data files I access for this assignment.
- A .gitignore file for any Python Notebook checkpoints ~~that I totally did not delete on accident~~ because apparently it's good practice to not share checkpoints with strangers on the internet in case any sensitive information is included.
- A Jupyter Notebook `.ipynb` file containing all the data I processed, charts I generated, and analyses I wrote. Anything insightful and analytical can be found there, so I'll refrain from explaining too much here in this Readme.
  - The links you see upon opening the file are internal links that lead to other sections of the Notebook. It doesn't quite work on Github's preview system, but it should work if you fork it and open it with Jupyter or VSCode.
### Installation/Prerequisites
- Make sure you can run Python as well as some kind of IPython Notebook like VSCode or Jupyter Notebooks/Lab. 
- The development environment I used was set-up with:
```
conda create -n dev python=3.10 anaconda -y
```
  - Explanation about the [different conda flags here](https://docs.conda.io/projects/conda/en/latest/commands/create.html#:~:text=Create%20a%20new%20conda%20environment,n%20NAME%20or%20%2Dp%20PREFIXoption.).
  - This also means that it's most ideal if you also have Conda and Anaconda set up. 
  - Modules included: `pandas` and `pathlib`. Installing via the conda command given should give you access to Pandas locally, but here's the [different ways to install Pandas](https://pandas.pydata.org/docs/getting_started/install.html) depending on the machine you have. You might prefer PIP, I don't know.

## Code Breakdown, but not really.
> Look, the code I have is basically broken down line by line in the comments of the Notebook file. Just read that if you want anything remotely technical. There wasn't any super fancy logic or algorithms here, so this is really more of a diary entry.

So. Why Pandas? Why can't we use Excel files if the source data is compatible with Excel?
- Because it's so much easier on here.

For this assignment, we have two files to process:
1. One file containing information about 15 schools.
2. Another file containing information of about 39,000 students, each belonging to one of those 15 schools.

And our job is to crunch them into different charts and extract meaning out of the numbers on them. Maybe identify patterns and explain for the variation and discrepancies within the dataset.
- TLDR: Extract columns, make nice charts, interpret summaries.

![This is a sample chart trying to show the difference in performance between two particular groups](https://cdn.discordapp.com/attachments/939673945240637450/1104946869064441926/image.png)

You can tell that this assignment involves merging data and linking students of one spreadsheet to schools of another spreadsheet. The assignment is similar to a worksheet as the guidelines specify what they want and what charts they want outputted. We still have to figure out the code that returns the intended result, but the only thing that's purely my own input are my overly long analyses.

With Pandas, you could do all that and more with just a few lines of code because the crazy people who wrote this library did all the heavy lifting for us. The hardest part was learning the format and the syntax of the language because sometimes I got the placement of the `[]` brackets mixed up. However, once you do that, everything pretty much boils down to:
```python
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
> Project completed on May 7, 2023
### On proper READMEs...
- So the other day, I got in trouble for writing unprofessional READMES that may be offensive to other people and, more importantly, obstructive to my career development. Frankly, I liked the way I talk, but I understand that there's a time and place for everything and flippant levity clearly doesn't belong here. So, let's talk about what to put in a README!
  - [https://www.makeareadme.com/](https://www.makeareadme.com/). Here you go. That's all that you need.
  - There's also [this tutorial](https://community.codenewbie.org/kwing25/how-to-write-a-good-readme-for-your-project-16ej) here to give some ideas of what to include.
- I've since added a short installation prerequisite in hopes of helping people run my project for testing out and replicating the results I had. However, as the things I produce aren't always libraries or modules people can exploit to make their next overhyped Unicorn pipe dream, these are the things I like to put in here so people know what they need to know:
  - Folder Contents (What am I downloading)
  - Installation (How do I use them and get my downloads to work)
  - Code Explanations for anything necessary (If I don't explain much, chances are the code is self-explanatory or that I have a ton of comments and don't want to ~~go through the effort of regurgitating~~ clutter up the document with redundant information.
  - Resources that helped me learn the code I needed to learn
  - Visual aids if needed
- This repository has always been an ever-evolving journal from the perspective of a learner and aspiring data scientist, so the content I added here best explains the mindset I had as a learner and what I feel could benefit the next learner the most.
  - By the way, here's a little something for *you* to [spice up your Github Markdown document](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax).

### Stray tangent
- Godot Engine looks neat. I hope to create things I can be proud of in the near future.
