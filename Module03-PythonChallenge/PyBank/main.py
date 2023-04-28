#PyBank code

#import necessary libraries
import os
import csv

#save file paths here
readpath = os.path.join("Resources","budget_data.csv")
writepath = os.path.join("analysis","PyBankAnalysis.txt")

#the internet said I can do this, so I'll open both the read-file and write-file with their appropriate permissions and parsing parameters
with open(readpath, "r", encoding="utf") as budget, open(writepath, "w", newline="") as analysis:
    budgetR=csv.reader(budget, delimiter=",") #make csvreader. Don't need one for Analysis because it's not a CSV file.
    
    header=next(budgetR) #skip header
    
    months, profits=[], [] #set up some numbers
    for row in budgetR: #didn't use list comprehension here because the pointer that iterates through the reader object doesn't reset itself for some reason. Instead of calling seek(0) or something, I'll just use a traditional loop to get what I need.
        months.append(row[0])
        profits.append(float(row[1]))
    
    #86-1=85 entries. Each Change entry calculates profit[x]-profit[x-1], x-1 needs to stay above 0 for obvious range considerations.
    change = [profits[i]-profits[i-1] for i in range(len(profits)) if i>0] 

    #Found out that backslash can be used to organize large strings and lines of code. Sprinkled :.2f within formatted strings to align with standard currency formatting. For some reason, I have to delete or the indentation or the message shows up all indented on the terminal and text file.
    message = f"\
------------------\n\n\
FINANCIAL ANALYSIS\n\n\
------------------\n\n\
Total Months: {len(profits)}\n\n\
Gross Total: ${sum(profits):.2f}\n\n\
Average Monthly Change: ${sum(change)/len(change):.2f}\n\n\
Greatest Monthly Profit Increase: {months[change.index(max(change))+1]} (${max(change):.2f})\n\n\
Greatest Monthly Profit Decrease: {months[change.index(min(change))+1]} (${min(change):.2f})\n\n\
------------------"
    
    #print to terminal
    print(message)

    #write to write-file
    analysis.write(message)

    #One more terminal notification
    print(f"Financial Analysis written into text file at relative file path: \"{writepath}\"")
