# Python Challenge

## Folder Contents
- There are *two* project folders as this Challenge was a two-part assignment. 
  - One is named **PyBank** and the other is named **PyPoll**. Functionally, they carry the exact same contents, though each one has a different theme. 
  - As the names may suggest, PyBank involves minor financial analysis while PyPoll involves tallying votes.
- Each of the two project folders contains the following items:
  - A "Resource" folder that contains an Excel file with the raw data we are supposed to process.
  - An "analysis" folder (I forgot to capitalize the name for some reason) with a clean text file that is supposed to collect the results after the relevant data is processed and a text file with a "Finished" attached to the end of the file name with the expected final results. 
    > The purpose of these separate files is to let anyone who took the time to fork this repository see for themselves that the code does read and write properly. It almost serves as a "Before-and-After" comparison where the clean file will look like the finished file after the attached script has run.
  - A `main.py` Python script file that reads the CSV data, processes the information inside it, and writes it into the aforementioned text file.

## Code Breakdown
The tasks given are pretty straightforward:
- For PyBank, do math on the numerical records they have and create a small report that describes the performance of the company in question over the course of roughly 7 years.
- For PyPoll, tally up the votes on a spreadsheet with almost 370,000 individual data entries and figure out who won.

Perhaps I'm being reductive, but it really is just:
```
1. Read file.
2. Do math.
3. Write answers somewhere.
```
But with syntax and rules.

Because what I had to do was so straightforward, this section is more of a breakdown of the grocery list of things I needed to figure out how to do in order to get the output I desired and the staff in the grocery store I met along the way who directed me to the right aisles. Maybe this will help anyone who bothers to read the drivel I have up here.
### The Figure-Out List
- ~~Milk~~
- ~~Eggs~~
- Reading/Writing things

Fortunately, like most programming problems, things can be solved by reading the documentation. Unfortunately, the documentation is spread out all over the place and sometimes you need a trip to StackOverflow to have someone point you in the right way. Sure, the [docs about the CSV module here](https://docs.python.org/3/library/csv.html) briefly mention about how to read and write files, but [someone](https://stackoverflow.com/a/1073814) had to point me to [multiple context managers](https://docs.python.org/3/whatsnew/3.10.html#parenthesized-context-managers) just so I can read and write from the same `with` block instead of nesting them like some kind of barbarian.

The csv module documentation also led me to reader/writer objects and other vital data-preparation things, though I'm still confused about why I need to manually reset the iterator to the top of the reader when I want to loop through CSV rows a second time. 

- Lists that don't take 5 lines to write

[List comprehension](https://www.w3schools.com/python/python_lists_comprehension.asp) and [line continuation](https://note.nkmk.me/en/python-long-string/) were the next things I looked into. I don't know if the code I had was the most *pythonic* thing to do, but I really didn't want to write 7 different print statements. Maybe there's a module for printing out paragraphs to the console, maybe I should've looked into one of the many [styling](https://pypi.org/project/sty/) modules this community has to offer.

Really, the rest of the code is just logic and specific quirks I had to confirm with the specific approach and data types I picked. In hindsight, maybe I should've defined a function or something that will return the text form of the report that I'm supposed to write. By brute-forcing a quick solution I've probably missed out on a few contingencies that I could've accounted for.
- For example, since the Max() function returns the first value that matches, I probably needed to call `statistics.mode` or use a loop instead in the unlikely case there are multiple winners. Fortunately, there are only a handful of candidates and I've displayed enough information for people to notice if there is in fact a tie.

## Random Thoughts
### April 28, 2023
- So apparently people use Python and Django to make stuff. I did not know that. Parts of services like YouTube, Facebook, Instagram, and Uber all seem to use it to some degree, which makes sense considering the linear algebra and math that goes into dehumanizing people into dots for their tSNE cluster-based recommendation algorithms.
  - Wow. How quickly that sentence transitioned from an observation about a commonly used technological framework to visceral hatred for the modern attention-based economy. I think I started feeling this way because I didn't like how I was being averaged out by a bunch of back-propagated nonsense and being tossed into a bucket in cyberspace to feed and graze on the endless glut of content the internet has to offer.
  - Who do they think I am?
    > Eh. I'm overreacting. The trend towards outrage media has led me to short fuses and even shorter patience.
- Oh well, enough angsty pessimism for one day.
- Something finally clicked with Git and their commits ahead/behind stuff. I'm glad to see that I'm not complete garbage at version control after someone kindly suggested I pull from my remote repository for once. I may be meandering through the fog, but I am gradually seeing clearer.
