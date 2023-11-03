# Python - Data Visualization Challenge
> How do I turn the data I have into compelling and informative visual aids?
## Folder Contents
- A folder with all the CSV data files I access for this assignment.
- A .gitignore file I've *properly* pushed onto this repository this time around.
- A Jupyter Notebook `.ipynb` file containing all the data I processed, charts and graphs I generated, and any analyses I wrote. Anything insightful and analytical can be found there, so, rather than explaining too much here, this Readme will instead cover the *how* of creating this project.
  - The links you see upon opening the file are internal links that lead to other sections of the Notebook. It doesn't quite work on Github's preview system, but it should work if you fork it and open it with Jupyter or VSCode.
### Installation/Prerequisites
- Make sure you can run Python. The development environment I used was set-up with:
```
conda create -n dev python=3.10 anaconda -y
```
  - Explanation about the [different conda flags here](https://docs.conda.io/projects/conda/en/latest/commands/create.html#:~:text=Create%20a%20new%20conda%20environment,n%20NAME%20or%20%2Dp%20PREFIXoption.).
  - This also means that it's most ideal if you also have Conda and Anaconda set up. 
  - We have a lot of modules here. Installing via the conda command given should give you access to all of the script's modules locally. However, if you don't have them, be sure to grab yourself [Pandas](https://pandas.pydata.org/docs/getting_started/install.html), [NumPy](https://numpy.org/install/), [SciPy](https://scipy.org/install/), and [MatPlotLib](https://matplotlib.org/stable/users/installing/index.html).
  - (TLDR: Just Conda a proper development environment...)

## Code Showcase
The goal of this assignment is to (first and foremost, get us accustomed to wrangling data) make charts that show and compare the effectiveness of various drug treatments on lab mice with SCC tumors.

We have two files to process:
1. One file containing metadata about lab rats such as their size, .
2. Another file containing information of tumor sizes of the lab rats over the course of their medical experiments.

As previously mentioned, all the insightful stuff you need are in the comments of the attached `.ipynb` file, so I would like to instead talk about a few snippets of code I'm particularly fond of and maybe explain my process behind them.

### Wrangling Groups
So. Groupby. I tell Python to group my stuff by some value in a column and magic happens. What is it, really? If I run `df.groupby(["Column_Name_Here"])`, what I get is a GroupBy "object" that contains "information about the groups" according to official documentation.
```python
<pandas.core.groupby.generic.DataFrameGroupBy object at 0x000001FE7492D390>
```
This address doesn't make much sense to me, but we can visualize what this is by iterating through each of the groups with this method:
```python
for name, group in test_group:
    print(name)
    print(group)
```
This will return the name of each group as well as all of the rows that belong to each group. For example, if you grouped data by "drug regimen", a group's name might be "Capomulin" or "Stelasyn" or "Placebo" and each group will have all the data of the rows that belong to that group. 
> The screenshot below used `group.head()` to conserve space and accesses `df.groupby(["Drug Regimen"])`.

![This is what a group looks like](https://cdn.discordapp.com/attachments/1107347677831778364/1107393764739260456/image.png)

And if I defined each group to be `df.groupby(["Grouping_By_This_Column"])["And Accessing This Column"]`, I'd get only the column I referenced within each group.
> The screenshot below used `group.head()` to conserve space and accesses `df.groupby(["Drug Regimen"])["Tumor Volume (mm3)"]`.

![You can slice groups too, apparently](https://cdn.discordapp.com/attachments/1107347677831778364/1107395568046714941/image.png)

I still don't know what GroupBy is, but it's probably some kind of [mapping function](https://en.wikipedia.org/wiki/Map_(higher-order_function)) that does something to every single row of my dataframe. However, now that I have a means of getting the data from the groups, I could look into ways to iterate through them or even iterating through each row of every group.

### Doing Stuff with Groups
I can access the group I want through `group_name.get_group("name_of_the_group")`. For example, if I did `group.get_group("Placebo")` where my `group` is defined to be `df.groupby(["Drug Regimen"])["Tumor Volume (mm3)"]` in order to get that one column I want, I will access the data of `Placebo` as a Pandas Series (because I'm only accessing one column).

![The Placebo Group's contents](https://cdn.discordapp.com/attachments/1107347677831778364/1107397700808355900/image.png)

This means that I can dynamically access the groups I want by defining what I need in some kind of list rather than writing a separate line for each group I want. For example, this implementation will concatenate each group I extract (each `get_group` returns a Series because of how I planned my groups) and join them into one big ol' dataframe:
```python
treatments = ["Capomulin", "Ramicane", "Infubinol", "Ceftamin"]
df = pd.concat([group.get_group(i).rename(i) for i in treatments], axis="columns")
```

![Joining iterated groups to make a beeg dataframe](https://cdn.discordapp.com/attachments/1107347677831778364/1107404835655000154/image.png)

### Boxplot Shenanigans
Now that I have a consolidated dataframe, I can straight up toss it into `df.plot(kind="box")` and make my minimum-effort boxplot. No questions asked because the default arguments and the way this higher-level function is written is actually considerate of a developer's time.

![Boxplot one](https://cdn.discordapp.com/attachments/1107347677831778364/1107405795404042240/test.png)

None of the NaN entries matter because each of those entries is literally "Not a Number" and is not considered for Pandas' built-in functions.

This also means that I can do boxplots on *whatever* columns I want.
```python
treatments = ["Placebo", "Ramicane", "Zoniferol", "Stelasyn", "Naftisol", \
              "Propriva", "Ceftamin", "Infubinol", "Ketapril", "Capomulin"]
test.plot(kind="box", rot=90) # Added the 90 to rotate labels
```
Makes:

![Boxplot two](https://cdn.discordapp.com/attachments/1107347677831778364/1107408334681812992/image.png)

All it takes then is a bit of styling and a bit of documentation-referencing.
```python
test.plot(kind="box", 
          capprops={"color":"black"}, 
          whiskerprops={"color":"black"}, 
          boxprops={"color":"black"}, 
          medianprops={"color":"orange"}, 
          flierprops={"markerfacecolor":"red", "markersize":"14"}, 
          ylabel="Final Tumor Volume (mm3)")
# Added a reference line to show where Tumor Volumes started
plt.axhline(y=45, c="r", linestyle="--", label="Starting Tumor Volume") 
plt.legend()
plt.show()
```
Which makes:

![Boxplot three](https://cdn.discordapp.com/attachments/1107347677831778364/1107409309874278501/image.png)

It only takes a few moments of thought to make data ever so digestible. Similar chains of logic can also be found elsewhere in my Notebook, which makes things a lot more reusable. Trying to implement this extra little step has greatly improved my understanding of how Pandas' groupby stuff works.

## Resources that helped a lot
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
> Project completed on May 14, 2023
- The other day, I was going through [documentation regarding a polyfit function](https://numpy.org/doc/stable/reference/generated/numpy.polyfit.html) and I found something worth noting:

![Oh my god, I think I actually understand this.](https://cdn.discordapp.com/attachments/1107347677831778364/1107363804284723210/image.png)
- I have been studying matrices as a means of getting into machine learning and I actually somewhat recognize what is on here and why "RankWarning" could be a problem as one of the applications of matrices covered in the material I'm going through includes Projection Matrices and Linear Regression. It's relieving to find something I recognize and could potentially implement in the future.
- On that note, I was watching [this video](https://www.youtube.com/watch?v=KPoeNZZ6H4s) about customizing something on some game engine this one time and I noticed that I actually somewhat understood what he was talking about. One of the sections in Gilbert Strang's OpenCourseWare classes talked about using Linear Algebra to turn differential equations into something a computer can easily compute. For a second, I felt this strange sense of hope as I could potentially recreate that as well now that I have a basic understanding of the kind of mathematics that's often used in scientific computing.
- Does this gauntlet never end.
