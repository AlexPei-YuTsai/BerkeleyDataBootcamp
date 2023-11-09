# Alex's BerkeleyDataBootcamp File Repository
This repository contains most, if not all of the content I'm responsible for creating during my time in the Berkeley Data Analytics Boot Camp. This document describes what is in the repository and will be updated periodically to reflect new file uploads, changes, and thoughts I may have to offer.

The language used here might be a little crass and straightforward, but really this is my way of staying authentic in a time when ChatGPT can hallucinate truthy garbage for you regardless.

I have learned a lot over the course of the past 6 months and I hope this is proof of my growth as both a scholar and a programmer.

### Table of Contents and Quick Links
- **I - Data Science and Python**
  - Module 1A - [Excel](#module-01---excel)
  - Module 1B - [VBA](#module-02---visual-basic-for-applications)
  - Module 1C - [Python](#module-03---python)
  - Module 1D - [Pandas](#module-04---python-but-now-with-pandas)
  - Module 1E - [MatPlotLib](#module-05---python-but-now-with-matplotlib-and-more-stuff)
  - Module 1F - [APIs](#module-06---python-but-now-with-apis)
  - Module 1P - [PROJECT 1: Wealth vs Health](#module-07-and-08---project-1)
-  **II - Databases**
  - Module 2A - [SQL](#module-01---excel)
  - Module 2B - [SQLAlchemy](#module-01---excel)
  - Module 2C - [Web Data Extraction](#module-01---excel)
  - Module 2D - [NoSQL](#module-01---excel)
  - Module 2P - [PROJECT 2: ETL Pipeline](#module-01---excel)
-  **III - Data Visualization**
  -  Module 3A - [Interactive Visualizations](#module-01---excel)
  -  Module 3B - [Frontend Map Displays](#module-01---excel)
  -  Module 3P - [PROJECT 3: Oceanplastics analysis](#module-01---excel)
-  **IV - Machine Learning**
  - Module 4A - [Unsupervised Learning](#module-01---excel)
  - Module 4B - [Supervised Learning](#module-01---excel)
  - Module 4C - [Deep Learning](#module-01---excel)
  - Module 4P - [PROJECT 4: Wealth vs Health Revisited](#module-01---excel)
---
## PART ONE - Data Science and Python
### Module 1A - [Excel](https://github.com/AlexPei-YuTsai/BerkeleyDataBootcamp/tree/main/Module01-Excel)
Regardless of how lofty one's goals of machine learning and data science are, all data-processing begins at managing spreadsheets and understanding basic statistics. We learn pivot tables, conditional formatting, convenient functions, and data visualization here.

![Excel - Data Scientist's first step into a life they'll regret. A picture of a spreadsheet with conditional formatting, charts, and the basic functionality of this timeless office software.](https://cdn.discordapp.com/attachments/1107347677831778364/1107348043336007772/image.png)
- Don't sleep on Excel. It's the one thing everybody uses regardless of their technical prowess and responsibilities.

### Module 1B - [Visual Basic for Applications](https://github.com/AlexPei-YuTsai/BerkeleyDataBootcamp/tree/main/Module02-VBA)
Aspiring data scientist's first IDE and programming language. We learn the basics of every language: Variables, Ifs, Loops, and Functions here. Had to read up about object methods and how to use them somewhere else, but the core fundamentals are still transferrable. Don't worry about that. We also learned to break down black boxes into smaller black boxes so we can figure out step-by-step how to get different things to function and get different functions to operate across different Objects within Excel.

![VBA - Data Scientist's first coding language. Should've been Python, but hey no data extraction here, I guess. A picture of a spreadsheet running a macro I wrote to do stuff to all the spreadsheets in this file.](https://cdn.discordapp.com/attachments/1107347677831778364/1107349223776727151/image.png)
- Basically, we looped through worksheets and processed numbers.

### Module 1C - [Python](https://github.com/AlexPei-YuTsai/BerkeleyDataBootcamp/tree/main/Module03-Python)
More than half of data science pretty much relies on this or some library this language has to offer. Wanna do math and data analytics? Numpy and Matplotlib. Wanna do the same thing except with something that stands out more on a resume? Pandas. Wanna do Machine Learning and Linear Algebra? Pytorch and Tensorflow. Face-tracking applications that took 6 months for a PhD candidate to write can now be replicated in 20 minutes with a tutorial because of how many tools there are. We stand atop the shoulders of giants, but we still need scale the titans' backs.

![Python - Frankly, this is probably 80% of what Data Scientists do. A picture of a Python script file, the spreadsheet it's extracting data from, and the output as a result of that script.](https://cdn.discordapp.com/attachments/1107347677831778364/1107350970498830356/image.png)
- Learned file reading, writing, and manipulation here. Eventually there'll be more math.

### Module 1D - Python, but now with [Pandas](https://github.com/AlexPei-YuTsai/BerkeleyDataBootcamp/tree/main/Module04-Pandas)
At some point, we'll have to handle Big Data that we can't efficiently manage on Excel. Pandas allows us to clean, aggregate, and analyze data quickly so we can collect the insights that matter. Garbage in, garbage out. The faster you get good data into your system, the faster you get good results from your Machine Learning black boxes. It's similar to Machine Learning applications like Rapidminer where the first step to processing any data is to do data preparation and clean up your garbage data.

![Pandas - Data Prep's gotta start from somewhere. A picture of a Pandas Dataframe generated on Jupyter Notebooks within VSCode.](https://cdn.discordapp.com/attachments/1107347677831778364/1107354581647757342/image.png)
- Advanced table manipulation, basically.

### Module 1E - Python, but now with [Matplotlib and more stuff](https://github.com/AlexPei-YuTsai/BerkeleyDataBootcamp/tree/main/Module05-Matplotlib)
A picture is worth a thousand words and can compress millions of data entries into a chart that allows you to understand months of research in minutes. We also learn to use modules like SciPy and NumPy because mathematics is a giant nuisance and these imported libraries make our jobs so much easier. Did you know you could probably make a neural network with NumPy alone? It's basically just applied linear algebra after all.

![Charts, because no one has the time to read individual lines of data. Who really cares about the individual? A boxplot generated from MatPlotLib, Pandas, and other Python libraries, visualized on Jupyter Notebooks.](https://cdn.discordapp.com/attachments/1107347677831778364/1107355803603705978/image.png)
- Data Visualization techniques. Graphs, statistics, linear regression, and all that good stuff.

### Module 1F - Python, but [now with APIs](https://github.com/AlexPei-YuTsai/BerkeleyDataBootcamp/tree/main/Module06-PythonAPI)
We code so we can code less. Aside from making another revenue stream in exchange for giving people access to some of the information you have so they can do work and make interesting things on your behalf, APIs are great for data science because they provide large amounts of information from a consolidated source and a predictable data type. It's like an IKEA or Home Depot for programmers. Modern coding is basically creating Frankenstein abominations from borrowed libraries anyways.

![An hvPlot generated from Pandas and other APIs](https://cdn.discordapp.com/attachments/1107347677831778364/1110362260850872380/bokeh_plot.png)

- API access and API magic. Get info from API and do stuff with that.

### Module 1P - [PROJECT 1](https://github.com/AlexPei-YuTsai/BerkeleyDataBootcamp/tree/main/Module07And08-ProjectONE)
Using everything we learned in Part One, we picked a topic to explore and used data science in order to efficiently answer those questions. With Python, Pandas, and more, we processed the data. With MatPlotLib and other visualization libraries, we made powerful illustrations. With our teamwork, we told a story.

![An geographical hvPlot generated in an attempt to illustrate the relationship between the wealth and obesity of a place](https://cdn.discordapp.com/attachments/939673945240637450/1127339117374607500/image.png)

- Answering questions by collecting data ourselves and doing math to it programmatically.

---
## PART TWO
### Module 2A - CRUD, it's [SQL](https://github.com/AlexPei-YuTsai/sql-challenge)

### Module 2B - SQL, but now with this weird [SQLAlchemy](https://github.com/AlexPei-YuTsai/sqlalchemy-challenge) black magic

### Module 2C - [Web Data Extraction](https://github.com/AlexPei-YuTsai/data-collection-challenge)

### Module 2D - NoSQL ft. [Mongo](https://github.com/AlexPei-YuTsai/nosql-challenge)

### Module 2P - [PROJECT 2](https://github.com/AlexPei-YuTsai/Crowdfunding_ETL)

---
## PART THREE
### Module 3A - [Interactive Visualizations](https://github.com/AlexPei-YuTsai/belly-button-challenge)

### Module 3B - [Frontend Map Displays](https://github.com/AlexPei-YuTsai/leaflet-challenge)

### Module 3P - [PROJECT 3](https://github.com/AlexPei-YuTsai/BerkeleyDataBootcampProjectTHREE)

---
## PART FOUR
### Module 4A - [Unsupervised Learning](https://github.com/AlexPei-YuTsai/cryptoclustering-challenge)

### Module 4B - [Supervised Learning](https://github.com/AlexPei-YuTsai/credit-risk-classification)

### Module 4C - [Neural Networks and Deep Learning](https://github.com/AlexPei-YuTsai/deep-learning-challenge)https://github.com/AlexPei-YuTsai/deep-learning-challenge)

### Module 4P - [PROJECT 4](https://github.com/chris-yujin/UCB-Capstone-Project/tree/main)https://github.com/chris-yujin/UCB-Capstone-Project/tree/main)
