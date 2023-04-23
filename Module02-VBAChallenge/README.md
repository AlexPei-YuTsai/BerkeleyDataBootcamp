# Visual Basic for Applications (VBA) Challenge
### Folder Contents:
- A script that parses through all pages of a given Excel file and produces a summary table for each unique stock ticker on the spreadsheet.
  - Scripts in both `.vbs` and `.bas` form. 
  - `.bas` files can be directly imported into your file through the Visual Basic Editor by going to File > Import File. The other file type will require some Commmand Line Interface nonsense if you haven't directly copied the code in the file onto the Editor.
- A folder of screenshots showing:
  1. My first progress shot after getting the script to process one sheet's worth of results.
  2. A snippet of results I got after doing the rest of the code and getting it to loop through all sheets of the oversized Excel file.
- A miniature Excel file with only about 140,000 entries and the VBA script attached so anyone interested could try it out for themselves.
  - Disclaimer: The original file this assignment's script was for had about 2.3 *million* data entries, so that's 70 megabytes of none of my business that you can get by [clicking on me](https://static.bc-edx.com/data/dl-1-2/m2/lms/starter/Starter_Code.zip "Just saying, this IS 2.3 million rows of random data")

### Code Breakdown - Explaining the Logic
An OHLC chart is a chart that shows the **o**pen, **h**igh, **l**ow, and **c**losing prices for each stock in a given period of time. The Excel files provided in this folder are raw data versions of these graphs with the main prices and daily stock volume as data points underneath different columns.

The assignment asked for 4 things to be recorded:
1.	Ticker: Each entry should be unique. If there are 2 entries for "AAX", then only one row representing "AAX" should be in the summary table.
2.	Yearly change: Which I found out to equal `lastday.closingprice – firstday.openingprice` after some testing. It's a simple formula, but I'm highlighting this because it matters despite its simplicity.
3.	Percent change: Is Yearly Change contextualized to show the magnitude of its change relative to each stock's own prices. It's simply `(lastday.closingprice – firstday.openingprice)/firstday.openingprice` but later formatted into a percentage.
4.	Total stock volume: Sum of all stock volumes of a given unique ticker.

Initially I thought to use Dictionaries. It's a convenient data type that allows me to store whatever data I want and its unique property of never allowing duplicate keys allows me to store each Ticker as its own dictionary entry. I thought I could have individual entries like:
- `(Ticker Name): [Opening Value of the earliest date found, Closing Value of the lastest date found, Stock Volume Sum]` could be used where I can go through each entry row by row, updating each key's items one at a time. I had thought this to be the best approach because I was assuming a contingency of unordered data where checking every single row is required.

Unfortunately, VBA doesn't seem to allow anonymous arrays or dictionaries to be created on demand. Dictionaries are also not activated by default, requiring the `Microsoft Scripting Runtime` library to be activated within the Visual Basic Editor's Tools > References section, and are, frankly, garbage when it comes to having its items updated.
- In order to update the proposed nested array to be updated, I need to first store that in a variable, update it, and then shove it back into the key. I can't simply access the items with something like `dict(Key)(0)` to directly edit the first entry of the item array.

Furthermore, I’m ignorant and impatient, so I found a much more convenient method to brute force my way through the data.

ran for bout 3 mins
However, considering you can go to Data>Sort>and add filters that let you sort by name then date, the plan I had the involved checking every single date of every single cell seemed hopelessly inefficient instead.
New method:
