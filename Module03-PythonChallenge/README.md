# Python Challenge

## Folder Contents
- There are *two* project folders as this Challenge was a two-part assignment. 
  - One is named **PyBank** and the other is named **PyPoll**. Functionally, they carry the exact same contents, though each one has a different theme. 
  - As the names may suggest, PyBank involves minor financial analysis while PyPoll involves tallying votes.
- Each of the two project folders contains the following items:
  - A "Resource" folder that contains an Excel file with the raw data we are supposed to process.
  - An "analysis" folder (I forgot to capitalize the name for some reason) with a clean text file that is supposed to collect the results after the relevant data is processed and a text file with a "Finished" attached to the end of the file name with the expected final results. 
    - The purpose of these separate files is to let anyone who took the time to fork this repository see for themselves that the code does read and write properly. It almost serves as a "Before-and-After" comparison where the clean file will look like the finished file after the attached script has run.
  - A `main.py` Python script file that reads the CSV data, processes the information inside it, and writes it into the aforementioned text file.

## Code Breakdown
The tasks given are pretty straightforward:
- For PyBank, do math on the numerical records they have and create a small report that describes the performance of the company in question over the course of roughly 7 years.
- For PyPoll, tally up the votes on a spreadsheet with almost 370,000 individual data entries and figure out who won.

Because what I had to do was so straightforward, this section is more of a breakdown of the grocery list of things I needed to figure out how to do in order to get the output I desired.
### The Figure-Out List
- ~~Milk~~
- ~~Eggs~~
- Reading/Writing things

Fortunately, like most programming problems, things can be solved by reading the documentation. Unfortunately, the documentation is spread out all over the place and sometimes you need a trip to StackOverflow to have someone point you in the right way. Sure, the [docs about the CSV module here](https://docs.python.org/3/library/csv.html) briefly mention about how to read and write files, but someone had to point me to [multiple context managers](https://docs.python.org/3/whatsnew/3.10.html#parenthesized-context-managers) just so I can read and write from the same `with` block instead of nesting them like some kind of barbarian.

## Random Thoughts
### April 28, 2023
