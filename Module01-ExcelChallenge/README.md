# Excel Challenge
> Can we find data-driven patterns to distinguish successful crowdfunding campaigns from unsuccessful ones? 
## Folder Contents
There are two files in here: 
1. An Excel file with pivot tables and charts breaking down data about crowdfunding campaigns and their successes and failures. Various treatments have been done to the data to produce the graphics you see below.
2. A short writeup about my thoughts - Slightly elaborate detail about any statistical observations I have regarding the results and dataset.
### Installation/Prerequisites
- Just needs Microsoft Excel, Word or anything that's compatible with the files I've uploaded.

## Code Breakdown
It's a spreadsheet assignment, so I'll just cover any functionalities I thought were important enough to be included in a casual write-up.

1. Conditional Formatting
![A showcase of conditional formatting](https://cdn.discordapp.com/attachments/1107347677831778364/1109676112197451796/image.png)
- People are impatient creatures with attention spans smaller than a gerbil's toenail. Visual stimuli is the most efficient way to capture people's attention. They might not get the significance of the data all the time, but shiny colors will inform them of the attitude and connotation behind the shade of the cell. Here, Successful projects are automatically formatted to be green or blue (overachievers) while failed endeavors are coded in darker shades of red the further they underperform. With a glance, people can see who screwed up and who made it without having to contextualize the finances themselves.

2. Splitting Cells (Understanding Delimiters)
![A showcase of splitting strings with delimiters](https://cdn.discordapp.com/attachments/1107347677831778364/1109678705250422834/image.png)
- This is more accurately known as "Learning to use the tools you're given". The lads at Microsoft has had to do some tedious things over the years, so a lot of those tasks became automatable through buttons and functions in their Excel Ribbon. This, for example, is done simply by going to `Data > Text to Columns` in the Ribbon on the top of your screen and following the instructions to get your desired results. 
> Learning to use basic tools is important, because it saves you the effort of having to write a complex script elsewhere and somehow implementing it into your file. Why write something in VSCode when you could achieve the same results with a few clicks on a common piece of native software?

3. Using Functions, Tables, and Charts
![A showcase of Excel functions and the visualizations that can be made](https://cdn.discordapp.com/attachments/1107347677831778364/1109680540283572255/image.png)
- It's important to learn how to digest data, what tools to use to digest data, and what visualizations are most effective in presenting insights to a boardroom of executives who may or may not have the insider's perspective you have.

4. Using Pivot Tables
![A showcase of Excel pivot tables](https://cdn.discordapp.com/attachments/1107347677831778364/1109681761748791366/image.png)
- Pivot Tables are a very fast way of breaking down, rearranging, comparing, and aggregating data. This allows you to access any clues, leads, or secrets that your data may hide even as your spreadsheets include millions of individual entries. For example, I could easily breakdown the types of campaigns people had as well as any distributions by countries of origin simply by dragging and dropping buttons on a toolbar.

Honestly, being able to practice with functions such as VLOOKUP in this first week is nice. Excel has been around for a while and a lot of user-friendly functionalities have been added over the years. People have made crazy things with its functions and their ability to organize worksheets and link databases from one place to another. As there isn't a lot of code to explain, I think I will just paste some links to some resources that helped:

## Resources that helped
- Anything by Leila Gharani such as the [Beginner's Tutorial](https://www.youtube.com/watch?v=0tdlR1rBwkM), [Formulas and Functions Tutorial](https://www.youtube.com/watch?v=y1126PQ5zRU), [Pivot Table Tutorial](https://www.youtube.com/watch?v=UsdedFoTA68), or [Lookup Tutorial](https://www.youtube.com/watch?v=E7gQ-PgYkMc) helps a lot. She is an Excel Guru after all, so there's substance to her content.
- In a similar vein, Kevin Stratvert's content on [Graphs](https://www.youtube.com/watch?v=3o11OlLgYDo) and built-in [Regression/Forecasting](https://www.youtube.com/watch?v=QB4_pBlpPwM) also are very helpful. The guy worked at Microsoft before, if I recall correctly, so this stuff is his forte.

As with most tutorial videos, I recommend doing what I do and putting things on two times speed while having a piece of paper to take notes or a spreadsheet in a separate window to follow along and learn by doing. Until some maniac learns the way to download information directly into our brain and turn our psyches into a hellscape for advertising, learning technical skills is unfortunately a discipline that's best honed through practice and trial and error. I hope that whoever sees my files in the future will at least have a smoother path up the Sisyphean task of "learning to code".

## Random Thoughts
> *Project completed on April 15, 2023*

### Quick Real-Life Applications I had...
- Really, with how prevalent Google Drive and Microsoft is regardless of how esoteric or advanced your career is, you can't go wrong learning basic mathematics/statistics and spreadsheet management. For example, I have a hobby of doing online tabletop roleplaying games. We're talking your good ol' pen-and-paper number crunching games like Dungeons and Dragons and Call of Cthulhu. You know, the kind of games that could use an automated stat sheet with how impossibly complex they are. 
  > Fun fact, the estimated average playtime for a session of *The Campaign for North Africa* is **1,500 hours** long. What.
- This means that people build tools to remove the hassle of computing interactions, plugging in numbers, and other tasks prone to human error.
![Example of automated character sheets](https://cdn.discordapp.com/attachments/1107347677831778364/1109684519289757788/image.png)
- For example, during the character creation process for this one system, people had to choose a color of "crystal" that will confer upon them different spells and abilities they can use in game. A dropdown menu can act as "data validation" to control the input the user has in that field. A `Query` function can then be used to pull all of the spells matching the dropdown option chosen by referencing a separate sheet with all the information of the spells. `Vlookup` can be used to pull specific information depending on what the user inputted too.
![Example of tools](https://cdn.discordapp.com/attachments/1107347677831778364/1109687278797856798/image.png)
- I've seen people program all the interactions Pokemon would have. This includes an effectiveness matrix comparing the combat efficacy between all combinations of the 18 types, specific interactions with held items a Pokemon would have, any gameplay effects that would change from a Pokemon's ability, as well as the over 1,000 species that exist and their various stat distributions.
- Furthermore, because of how *transferrable* Excel skills are to Google Sheets, these simple applications can be built upon even further through looking up documentation and implementing them into the sheets with the power of your ingenuity. Google Sheets also means easy *distribution* of your ideas.

### On Stats...
- While doing a refresher on basic stats, I finally learned why the formula for variance has a `n-1` in the denominator - It's the difference between Population Variance and Sample Variance. Some random guy on the internet could explain it better, but... 
  - TLDR we work with a sample mean that's generated from the sample data we collected. As we're not sourcing the true pool of data, the distribution of the data is more clustered around this generated sample mean than the population mean.
  - Think about it this way: If you randomly sample Americans and managed to get mostly people from Arizona, their overall opinions would reflect Arizona more than they do America as a whole. The overall spread of opinions is narrower and more confined as a result of the sampling.
  - Because the sample distribution is clumped up closer together than it would if we have the population mean (*inaccessible*, by the way), the mad scientists at Stats Inc.<sup>TM</sup> figured to balance out the bias that comes with using samples by dividing by `n-1`. `n-1` is smaller than `n`, and fractions are bigger with a smaller denominator, this small heuristic helps us approximate a variance that better reflects that of the population.
- *Garbage In, Garbage Out*: It doesn't matter the changes, modifications, and regularization you do. If your raw collected data is trash, you will regurgitate trash results. Applies to both simple surveys and the most complex of Machine Learning models.
