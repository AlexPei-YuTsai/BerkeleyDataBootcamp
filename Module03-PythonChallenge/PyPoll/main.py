#PyPoll code

#import necessary libraries
import os
import csv

#save file paths here
readpath = os.path.join("Resources","election_data.csv")
writepath = os.path.join("analysis","PyPollAnalysis.txt")

#the internet said I can do this, so I'll open both the read-file and write-file with their appropriate permissions and parsing parameters
with open(readpath, "r", encoding="utf") as election, open(writepath, "w", newline="") as analysis:
    electionR = csv.reader(election, delimiter=",") #read each cell appropriately

    header=next(election) #stores header

    votes = {} #since we're counting things, I thought it most appropriate to use a dictionary for this problem

    for row in electionR:
        if row[2] not in votes.keys():
            votes[row[2]]=0 #initialize new keys and a numerical data type for values
        votes[row[2]]=votes[row[2]]+1
    
    space="\n\n" #apparently you can't have escaped keys inside f-strings
    votecount = [f"{i}: {(votes[i]/sum(votes.values()))*100:.3f}% ({votes[i]})" for i in votes] #and neither can dictionary annotation

    #Found out that backslash can be used to organize large strings and lines of code. For some reason, I have to delete or the indentation or the message shows up all indented on the terminal and text file.
     
    # I opted to store everything in a giant String block because I needed to recycle it in order to print it both onto the terminal and text file that I'm going to edit. If anything goes wrong, I can just edit this block down here.
    message = f"\
-------------------------------------------------------\n\n\
ELECTION RESULTS\n\n\
-------------------------------------------------------\n\n\
Total Votes: {sum(votes.values())}\n\n\
-------------------------------------------------------\n\n\
{space.join(votecount)}\n\n\
-------------------------------------------------------\n\n\
Winner: {max(votes, key=votes.get)}\n\n\
-------------------------------------------------------\
" 
#2 things worth annotating here: 
  # 1. Since some things aren't supported by f-strings, I defined them outside of the text block for use later. 
  # 2. Usually max(dictionary) would return some result that doesn't make sense because the function is comparing keys by alphabetical comparison rather than comparing them numerically by the values they possess. However, by adding in the optional argument "key=votes.get", each iterated key is compared using its corresponding value.
    
    #print to terminal
    print(message)

    #write to write-file
    analysis.write(message)

    #One more terminal notification
    print(f"Election Results written into text file at relative file path: \"{writepath}\"")