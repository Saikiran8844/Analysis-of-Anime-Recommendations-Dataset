# Analysis of Anime Recommendations Dataset

Ilcome to the Analysis of Anime Recommendations Dataset project! In this repository, I delve into a real-world dataset sourced from Medium to explore user feedback and ratings for anime. Our goal is to uncover valuable insights using Python and MySQL, ultimately providing a comprehensive analysis of the dataset.

## Dataset Overview

The dataset comprises two primary CSV files: `anime.csv` and `rating.csv`. Here's a brief overview of each:

- `anime.csv`: This file contains detailed information about each anime, including attributes such as anime ID, name, genre, type, episodes, rating, and members.
- `rating.csv`: Here, you'll find user ratings mapped with anime IDs.

## Project Highlights

### Data Cleaning and Organization

I kick off the project by utilizing Python to clean and organize the dataset, ensuring optimal data quality for analysis.

#### Handling Missing Data

I employ various techniques to handle missing values, including forward-fill and mean imputation for specific columns such as "Genres," "Rating," and "Members."

### Analysis Steps

Here's a glimpse of the key steps I undertake during the analysis:

- **Counting Null Values**: I leverage the `ISNULL()` method to identify and count null values in the dataset.
- **Updating Rows**: Utilizing SQL `UPDATE` statements, I efficiently handle missing values by applying techniques like forward-fill for "Genres," mean imputation for "Rating," and forward-fill for "Members."
- **Top Anime Titles**: Employing SQL `SELECT` and `ORDER BY` clauses, I rank and retrieve the top 10 anime titles based on their ratings.
- **Total Anime Titles**: I use the SQL `COUNT` function to calculate and retrieve the total count of anime titles.
- **Exporting to CSV**: Utilizing the `to_csv` method, I export the dataset to a CSV file, facilitating further analysis or data sharing.

### Insights and Findings

Our analysis yields several noteworthy findings:

- The dataset showcases a diverse range of anime titles across various genres, ratings, and popularity rankings.
- Techniques like forward-fill and mean imputation prove effective in handling missing data in columns such as "Genres," "Rating," and "Members."
- The distribution of episode counts for anime titles reveals prevalent trends, allowing us to identify the most common episode counts through analysis.

## Resources

For further reading, you can check out the original Medium article that inspired this project: [Analysis of Anime Ratings Dataset](https://medium.com/@krishnax16/analysis-of-anime-ratings-dataset-54cbde90f23d)

Thank you for exploring the Analysis of Anime Recommendations Dataset project with us! I hope you find the insights valuable and informative.
