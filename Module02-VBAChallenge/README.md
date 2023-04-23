# Visual Basic for Applications (VBA) Challenge
### Folder Contents:
- A script that parses through all pages of a given Excel file and produces a summary table for each unique stock ticker on the spreadsheet.
  - Scripts in both `.vbs` and `.bas` form. `.bas` files can be directly imported into your file through the Visual Basic Editor by going to File > Import File. The other file type will require some Commmand Line Interface nonsense if you haven't directly copied the code in the file onto the Editor.
- A folder of screenshots showing:
  1. My first progress shot after getting the script to process one sheet's worth of results.
  2. A snippet of results I got after doing the rest of the code and getting it to loop through all sheets of the oversized Excel file.
- A miniature Excel file with only about 140,000 entries and the VBA script attached so anyone interested could try it out for themselves.
  - Disclaimer: The original file this assignment's script was for had about 2.3 *million* data entries, so that's 70 megabytes of none of my business that you can get by [clicking on me](https://static.bc-edx.com/data/dl-1-2/m2/lms/starter/Starter_Code.zip "Just saying, this IS 2.3 million rows of random data")

### Code Breakdown - Explaining the Logic
Assignment asked for 4 things:
1.	Ticker: just record unique numbers -> Also the main reason why I picked Dictionaries. This is a data structure that doesn’t allow for duplicate keys, which means that identifying unique strings is the easiest thing in the world.
2.	Yearly change = lastday.closingprice – firstday.openingprice
3.	Percent change = (lastday.closingprice – firstday.openingprice)/firstday.openingprice but changed into a percentage
4.	Total stock volume = sum of all stock volumes of a given unique ticker

Each dictionary pair has the following:
•	Key (Ticker):
o	Value (is another dictionary) (
o	[Startdate: Open Value]
o	[Closedate: Close Value]
o	Total Volume
o	)
Honestly, a table or some kind of database would probably do me wonders here. Unfortunately, I’m ignorant and impatient, so I’ll brute force it with whatever methods I can think of.
I did this method because I thought of contingencies that involved the data being unordered. However, considering you can go to Data>Sort>and add filters that let you sort by name then date, the plan I had the involved checking every single date of every single cell seemed hopelessly inefficient instead.
New method:
•	Just a bunch of variables.
When in new entry, see if key exists, if it doesn’t, define a dictionary entry
Both .vbs and .bas files are included
