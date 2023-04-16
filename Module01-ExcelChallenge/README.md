# Excel Challenge
There are two files in here: 
1. An Excel file with pivot tables and charts.
2. A short writeup about my thoughts.

Honestly, being able to practice with functions such as VLOOKUP is nice. Excel has been around for a while and a lot of user-friendly functionalities have been added over the years. People have made crazy things with its functions and their ability to organize worksheets and link databases from one place to another.

### Random Thoughts
- April 15, 2023
- This is probably one of the only branches where you'll find a local commit history that's pushed from a local machine. It's been a while since I used Github and I remember why I *greatly* prefer Github's modern drag-and-drop interface over looking up Command Line Interface commands. Thank God this class doesn't force me to learn VIM.
- While doing a refresher on basic stats, I finally learned why the formula for variance has a `n-1` in the denominator - It's the difference between Population Variance and Sample Variance. Some random guy on the internet could explain it better, but... 
  - TLDR we work with a sample mean that's generated from the sample data we collected. As we're not sourcing the true pool of data, the distribution of the data is more clustered around this generated sample mean than the population mean.
  - Think about it this way: If you randomly sample Americans and managed to get mostly people from Arizona, their overall opinions would reflect Arizona more than they do America as a whole. The overall spread of opinions is narrower and more confined as a result of the sampling.
  - Because the sample distribution is clumped up closer together than it would if we have the population mean (*inaccessible*, by the way), the mad scientists at Stats Inc.<sup>TM</sup> figured to balance out the bias that comes with using samples by dividing by `n-1`. `n-1` is smaller than `n`, and fractions are bigger with a smaller denominator, this small heuristic helps us approximate a variance that better reflects that of the population.
- *Garbage In, Garbage Out*: It doesn't matter the changes, modifications, and regularization you do. If your raw collected data is trash, you will regurgitate trash results. Applies to both simple surveys and the most complex of Machine Learning models.
