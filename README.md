# Alex's BerkeleyDataBootcamp File Repository
This repository contains most, if not all of the content I'm responsible for creating during my time in the Berkeley Data Analytics Boot Camp. This document describes what is in the repository and will be updated periodically to reflect new file uploads, changes, and thoughts I may have to offer.

The language used here might be a little crass and straightforward, but really this is my way of staying authentic in a time when ChatGPT can hallucinate truthy garbage for you regardless.

I have learned a lot over the course of the past 6 months and I hope this proves my growth as both a scholar, programmer, and data scientist.

### Table of Contents and Quick Links
- **I - Data Science and Python**
    - Module 1A - [Excel](#module-1A---excel)
    - Module 1B - [VBA](#module-1B---visual-basic-for-applications)
    - Module 1C - [Python](#module-1C---python)
    - Module 1D - [Pandas](#module-1D---python-but-now-with-pandas)
    - Module 1E - [MatPlotLib](#module-1E---python-but-now-with-matplotlib-and-more-stuff)
    - Module 1F - [APIs](#module-1F---python-but-now-with-apis)
    - Module 1P - [PROJECT 1: Wealth vs Health](#module-1P---project-1)
-  **II - Databases**
    - Module 2A - [SQL](#module-2a---crud-its-sql)
    - Module 2B - [SQLAlchemy](#module-2b---sql-but-now-with-this-weird-sqlalchemy-black-magic)
    - Module 2C - [Web Data Extraction](#module-2c---web-data-extraction)
    - Module 2D - [NoSQL](#module-2d---nosql-ft-mongo)
    - Module 2P - [PROJECT 2: ETL Pipeline](#module-2p---project-2)
-  **III - Data Visualization**
    - Module 3A - [Interactive Visualizations](#module-3a---interactive-visualizations)
    - Module 3B - [Frontend Map Displays](#module-3b---frontend-map-displays)
    - Module 3P - [PROJECT 3: Oceanplastics analysis](#module-3p---project-3)
-  **IV - Machine Learning**
    - Module 4A - [Unsupervised Learning](#module-4a---unsupervised-learning)
    - Module 4B - [Supervised Learning](#module-4b---supervised-learning)
    - Module 4C - [Deep Learning](#module-4c---neural-networks-and-deep-learning)
    - Module 4P - [PROJECT 4: Wealth vs Health Revisited](#module-4p---project-4)
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

### Module 1F - Python, but [now with APIs](https://github.com/AlexPei-YuTsai/python-api-challenge)
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
With Machine Learning comes the need for an obscene amount of data. With that comes data storage methods. This is one of them and involves building relationships and links between relevant fields of data. We'll be using Postgres for this project. Apparently you can use `psycopg2` to get Python to communicate with this database.

![Something about SQL, Postgres, and PGAdmin](https://cdn.discordapp.com/attachments/1107347677831778364/1172076245920534568/image.png)

- Storing data in a way that makes sense. RDBMS basics.

### Module 2B - SQL, but now with this weird [SQLAlchemy](https://github.com/AlexPei-YuTsai/sqlalchemy-challenge) black magic
Now that we have some kind of understanding of where data goes, we should learn how to bring it out for processing and usage.

![A Flask API that uses data stored in an SQL server](https://cdn.discordapp.com/attachments/1107347677831778364/1172076858389581854/image.png)

- Learning how to use Flask to collect data from SQL, process it with Python, and then send it to the frontend via Javascript.

### Module 2C - [Web Data Extraction](https://github.com/AlexPei-YuTsai/data-collection-challenge)
Sometimes data doesn't come easily. So we have to collect it by force. Don't try this frivolously or you might get sued for DDOS'ing.

![A shot of webscraping in action.](https://cdn.discordapp.com/attachments/939673945240637450/1130937272922030190/image.png)

- Learning to use webscrapers to collect data.

### Module 2D - NoSQL ft. [Mongo](https://github.com/AlexPei-YuTsai/nosql-challenge)
What if you don't want to use Relational Databases? Perhaps you don't know all the values or even fields of your dataset? MongoDB and other NoSQL systems will then be something worth looking into.

![Python but with MongoDB](https://cdn.discordapp.com/attachments/1107347677831778364/1172083171010019379/image.png)

- Using PyMongo and MongoDBCompass to get some work done.

### Module 2P - [PROJECT 2](https://github.com/AlexPei-YuTsai/Crowdfunding_ETL)
The Extract, Transform, Load process, or some variation of this pipeline seems to be pretty standard in bigger projects where there's a constant influx of data. Similar to how raw materials need to be processed before being turned to marketable goods, data needs to be cleaned before it's usable for any projects.

![SQL Schema and ERD diagram](https://cdn.discordapp.com/attachments/1107347677831778364/1172084533378699374/image.png)

- Learned to use the ETL Process.

---
## PART THREE
### Module 3A - [Interactive Visualizations](https://github.com/AlexPei-YuTsai/belly-button-challenge)
In order to make our work accessible, the best way to do it would just be to deploy it as a product that people can use. In this case, this means making a webpage that has some kind of functionality.

![A webpage of interactive Plotly graphs](https://cdn.discordapp.com/attachments/1107347677831778364/1172085173026836550/image.png)

- Gotta deploy this. Imagine being that guy that sends their friends a link to Localhost:5000.

### Module 3B - [Frontend Map Displays](https://github.com/AlexPei-YuTsai/leaflet-challenge)
Some modules are more cumbersome than others. Leaflet is one of them, but the ability to create mapped displays is definitely worth the hours of lost sleep.

![A map that updates periodically based on API data it receives](https://cdn.discordapp.com/attachments/1107347677831778364/1172085449737633822/image.png)

- Leaflet map-making and applied Python API usage.

### Module 3P - [PROJECT 3](https://github.com/AlexPei-YuTsai/BerkeleyDataBootcampProjectTHREE)
I couldn't deploy this because I'm pretty sure PythonAnywhere and Heroku all have maintenance fees, but I still managed to use the tools I learned to create something, so that's nice.

![An geographical hvPlot generated in an attempt to illustrate the relationship between the wealth and obesity of a place](https://cdn.discordapp.com/attachments/1107347677831778364/1172086605981438014/image.png)

- Answering questions by collecting data ourselves and doing math to it programmatically.

---
## PART FOUR
### Module 4A - [Unsupervised Learning](https://github.com/AlexPei-YuTsai/cryptoclustering-challenge)
The first step of machine learning: grouping things. There are many ways we can group things and hopefully we can get a computer to do it for us.

![Clusters from ML clustering](https://cdn.discordapp.com/attachments/1107347677831778364/1172142858740973588/image.png)

- K-Means, PCA, and Unsupervised Learning.

### Module 4B - [Supervised Learning](https://github.com/AlexPei-YuTsai/credit-risk-classification)
Next up in the machine learning curriculum: predicting and classifying things. Based on observable trends, we try to get a computer to predict the future or guess what bucket something belongs to.

![Confusion matrix from ML classification](https://cdn.discordapp.com/attachments/1107347677831778364/1172143275419893830/image.png)

- Regression methods and Supervised Learning. 

### Module 4C - [Neural Networks and Deep Learning](https://github.com/AlexPei-YuTsai/deep-learning-challenge)
Neural Networks. The big Black Box that revitalized this field and enabled so many unique ideas to form.

![An geographical hvPlot generated in an attempt to illustrate the relationship between the wealth and obesity of a place](https://cdn.discordapp.com/attachments/1107347677831778364/1172143665846702100/image.png)

- Frankly, I should look into CS230 and actually learn how loss functions work. Tensorflow is neat, though.

### Module 4P - [PROJECT 4](https://github.com/chris-yujin/UCB-Capstone-Project/tree/main)
The final Everything project. Using the logic, know-how, and experience gathered over the past 6 months, we try to create a cool project that does something with machine learning. In this case, we try to predict how changes in average wealth and health behaviors shift health outcomes.
- Main Contributions: Core logic and infrastructure to get data to be communicated between front and backends. Framework built upon the code I had in Project 3. Data collected from sources in Project 1.

There's still plenty to learn. My next endeavor involves self-studying Andrew Y. Ng's [CS230](https://cs230.stanford.edu/syllabus/) and [CS229](https://cs229.stanford.edu/syllabus-spring2022.html) materials to get a stronger mathematical understanding of what's going on as well as better fundamentals to build more effective machine learning modules. Now that I've taken this course, I feel more confident to study by myself and learn by doing on my own terms.
