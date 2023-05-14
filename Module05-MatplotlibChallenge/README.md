# Python - Data Visualization Challenge

## Folder Contents
- A folder with all the CSV data files I access for this assignment.
- A .gitignore file I've *properly* pushed onto this repository this time around.
- A Jupyter Notebook `.ipynb` file containing all the data I processed, charts and graphs I generated, and any analyses I wrote. Anything insightful and analytical can be found there, so, rather than explaining too much here, this Readme will instead cover the *how* of creating this project.
  - The links you see upon opening the file are internal links that lead to other sections of the Notebook. It doesn't quite work on Github's preview system, but it should work if you fork it and open it with Jupyter or VSCode.

## Code Showcase
The goal of this assignment is to (first and foremost, get us accustomed to wrangling data) make charts that show and compare the effectiveness of various drug treatments on lab mice with SCC tumors.

We have two files to process:
1. One file containing metadata about lab rats such as their size, .
2. Another file containing information of tumor sizes of the lab rats over the course of their medical experiments.

As previously mentioned, all the insightful stuff you need are in the comments of the attached `.ipynb` files, but I would like to talk about a few snippets of code I'm particularly fond of and maybe explain my process behind them.

//TODO//
```python
thing[column].do_stuff(but="like this tho").do_more_stuff()
```

### Things that helped a lot
- [Corey Schafer's entire Pandas Playlist](https://www.youtube.com/playlist?list=PL-osiE80TeTsWmV9i9c58mdDCSskIFdDS) as well as his [Matplotlib series](https://www.youtube.com/playlist?list=PL-osiE80TeTvipOqomVEeZ1HRrcEvtZB_) served me well.
  - If you check my last post, you might find that I've included the same link. This is for the very simple reason of: Jesus Christ, I've already forgotten how to use Pandas within the span of less than 2 days. Somebody help me.
  - Unfortunately, similar to how learning verbal languages work, retention is predicated on consistent practice and self-imposed hardship.
  - At least for me, I found that the most effective way for me to learn is to place a deadline on me and force me to get something done with an all-nighter.
- Sometimes, [we just need to review the basics](https://stackoverflow.com/questions/28272137/pandas-how-to-filter-a-series).
  - A lot of this module is really just about understanding chart-bending. If you know how to extract the data you want, do things to the data you have, and put your results back together like some sick Frankenstein abomination, you're basically all good for Pandas.
  - A while ago, I heard of the CRUD operations. If you know how to Create, Read, Update, and Delete information, you're good to go. Personally, I'd prefer the term CRUDSAC as learning to Split, Apply, and Combine data also helps with whatever you want to do.
- Sometimes, you just need to read the documentation. I had no idea how [groupby objects](http://pandas.pydata.org/pandas-docs/stable/user_guide/groupby.html) worked, but after reading it thoroughly and taking a step back, I realized that I was overthinking some problems and could approach it with easier solutions. It took me a bit of looking around before I realized [what groups are and how to iterate through all the groups](https://www.youtube.com/watch?v=Wb2Tp35dZ-I).
![A warning about overcomplicating things](https://cdn.discordapp.com/attachments/1107347677831778364/1107372752073130004/image.png)
  - The picture above is one of the many notes on that page explaining how there are so many other more efficient and intuitive ways to get things done. They also say, *"All of the examples in this section can be more reliably, and more efficiently, computed using other pandas functionality,"* reaffirming that I needed to take a step back and rethink how I should be approaching the problems I have.
- [A video on Numpy regression](https://www.youtube.com/watch?v=EMIyRmrPWJQ). I found the content around the 8-minute mark to be more relevant.

## Random Thoughts
### May 14, 2023
- The other day, I was going through [documentation regarding a polyfit function](https://numpy.org/doc/stable/reference/generated/numpy.polyfit.html) and I found something worth noting:

![Oh my god, I think I actually understand this.](https://cdn.discordapp.com/attachments/1107347677831778364/1107363804284723210/image.png)
- I have been studying matrices as a means of getting into machine learning and I actually somewhat recognize what is on here and why "RankWarning" could be a problem as one of the applications of matrices covered in the material I'm going through includes Projection Matrices and Linear Regression. It's relieving to find something I recognize and could potentially implement in the future.
- On that note, I was watching [this video](https://www.youtube.com/watch?v=KPoeNZZ6H4s) about customizing something on some game engine this one time and I noticed that I actually somewhat understood what he was talking about. One of the sections in Gilbert Strang's OpenCourseWare classes talked about using Linear Algebra to turn differential equations into something a computer can easily compute. For a second, I felt this strange sense of hope as I could potentially recreate that as well now that I have a basic understanding of the kind of mathematics that's often used in scientific computing.
- Does this gauntlet never end.
