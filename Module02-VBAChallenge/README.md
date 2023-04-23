# Visual Basic for Applications (VBA) Challenge
### Folder Contents:
- A script that parses through all pages of a given Excel file and produces a summary table for each unique stock ticker on the spreadsheet.
  - Scripts in both `.vbs` and `.bas` form. 
  - `.bas` files can be directly imported into your file through the Visual Basic Editor by going to File > Import File. The other file type will require some Commmand Line Interface nonsense if you haven't directly copied the code in the file onto the Editor.
- A folder of screenshots showing:
  1. My first progress shot after getting the script to process one sheet's worth of results.
  2. A snippet of results I got after doing the rest of the code and getting it to loop through all sheets of the oversized Excel file.
- A miniature Excel file with only about 140,000 entries and the VBA script attached so anyone interested could try it out for themselves. The script can be activated by clicking on the little icon of a line graph instead of running the script through the Developer tab (assuming Macros are enabled).
  - Disclaimer: The original file this assignment's script was for had about 2.3 *million* data entries, so that's 70 megabytes of none of my business that you can get by [clicking on me](https://static.bc-edx.com/data/dl-1-2/m2/lms/starter/Starter_Code.zip "Just saying, this IS 2.3 million rows of random data")

## Code Breakdown
### Initial Attempt
An OHLC chart is a chart that shows the **o**pen, **h**igh, **l**ow, and **c**losing prices for each stock in a given period of time. The Excel files provided in this folder are raw data versions of these graphs with the main prices and daily stock volume as data points underneath different columns.

The assignment asked for 4 main things to be recorded. For each Ticker, the following information should be aggregated:
1.	Ticker Name: Each entry should be unique. If there are 2 entries for "AAX", then only one row representing "AAX" should be in the summary table.
2.	Yearly change: Which I found out to equal `lastday.closingprice – firstday.openingprice` after some testing. It's a simple formula, but I'm highlighting this because it matters despite its simplicity.
3.	Percent change: Is Yearly Change contextualized to show the magnitude of its change relative to each stock's own prices. It's simply `(lastday.closingprice – firstday.openingprice)/firstday.openingprice` but later formatted into a percentage.
4.	Total stock volume: Sum of all stock volumes of a given unique ticker.

Initially I thought to use Dictionaries. It's a convenient data type that allows me to store whatever data I want and its unique property of never allowing duplicate keys allows me to store each Ticker as its own dictionary entry. I thought I could have individual entries like:
- `(Ticker Name): [Opening Value of the earliest date found, Closing Value of the lastest date found, Stock Volume Sum]` could be used where I can go through each entry row by row, updating each key's items one at a time. I had thought this to be the best approach because I was assuming a contingency of unordered data where checking every single row is required.

Unfortunately, VBA doesn't seem to allow anonymous arrays or dictionaries to be created on demand. Dictionaries are also not activated by default, requiring the `Microsoft Scripting Runtime` library to be activated within the Visual Basic Editor's Tools > References section, and are, frankly, garbage when it comes to having its items updated.
- In order to update the proposed nested array to be updated, I need to first store that in a variable, update it, and then shove it back into the key. I can't simply access the items with something like `dict(Key)(0)` to directly edit the first entry of the item array.

Besides, any other contingencies such as missing or bad data entries would probably be handled in a separate subroutine to begin with, so my worries about needing to account for different scenarios are probably unfounded at best.

Furthermore, I’m ignorant and impatient, so I found a much more convenient method to brute force my way through the data.

### Explaining the Logic
If you recall the items that needed to be aggregated, you may notice that there's really only 4 pieces of data that really matter: The opening price of the earliest day, the closing price of the last day, the ticker name, and the stock volumes for each day.

This means that if we special-sort things such that the data is guaranteed to be ordered by name first and date second (least to greatest), we can find what we need for a given Ticker in the following spots:
| Ticker               | Date      | Open            | High            | Low             | Close           | Volume         |
|----------------------|-----------|-----------------|-----------------|-----------------|-----------------|----------------|
| **AAB (RIGHT HERE)** | 20200112  | **RIGHT HERE**  | Does not matter | Does not matter | Does not matter | **RIGHT HERE** |
| ...                  |    ...    |                 |                 |                 |                 | **RIGHT HERE** |
| ...                  | ~250 rows |                 |                 |                 |                 | **RIGHT HERE** |
| ...                  |    ...    |                 |                 |                 |                 | **RIGHT HERE** |
| AAB                  | 20201229  | Does not matter | Does not matter | Does not matter | **RIGHT HERE**  | **RIGHT HERE** |
| ABF                  | ...       | ...             | ...             | ...             | ...             | ...            |
 - Note: Date ordering thankfully works because each date is ordered in yyyyMMdd so the later date is guaranteed to be greater than the earlier date. (e.g.: 20201225 is later than 20200214, 20201225>20200214)

Each "block" of data would then consist of data with the same Ticker ordered by ascending date such that the `Opening Price` and `Closing Price` we need are on the first and last rows of the block, respectively. This means that each line in our summary/aggregation table can be collected this way:
> - On the first row of the "block", get the Name, Opening Price, and Volume
> - Speed through all rows by forcibly incrementing the iterator and sum up the Volume as you go
> - When the next row has a different Name than the one you're on, get the Closing Price, do your calculations, and you're done for this "block".
> - Repeat the process on the next row, which becomes the first row of your new "block" until you eventually run out of data.

In the code I have, I basically cycle through each page, sorting all the data just in case someone ever hit Data>Sort in order to check a particular statistic, running through the "block" algorithm, and aggregating each ticker's numbers on a table in a different column. I also use the spreadsheet's cells to store any data I would need for calculations since I could not be bothered to set variables. Probably not the best practice, but it works.

Any other data generated basically abuses the Sort function in order for me to conveniently collect any matches I need.

"But Alex," you may say, "Doesn't your reliance on Sorts severely slow down your program?"

Yes... Or so I thought. The 2.3 million-entry excel file took my computer roughly 3 minutes to fully finish. If I remove the Sorting function in the script, the time goes down to about 2 minutes and 55 seconds. I also wasn't really paying attention to my timer, so it's fair to say that the difference in computing time was negligible (It probably isn't). This means that whatever computing time it took is attributable to: My computer being garbage, VBA's compiler being garbage, or, more likely, my code being Garbage. However, given how my logic works and all the concerns I've listed previously, I find my current implementation to be satisfactory.
