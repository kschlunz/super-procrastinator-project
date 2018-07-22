## Super Procrastinator Newsfeed
A customizable Newsfeed that shows a few stories from different news sources for today's news. This is the Rails backend with News API. 


Frontend: https://github.com/kschlunz/frontend-super-procrastinator-project

## Demo
https://youtu.be/pBEcKJnKaaM

## Tech/framework used
Ruby on Rails, Postgres Database


## Features
The ability to customize a newsfeed and have updated news stories everyday. Used API:  "https://newsapi.org/v2/top-headlines?country=us&apiKey=#{ENV['NewsAPIKey']}"

#### Get response to Rails API backend at: http://localhost:3000/api/v1/list_items

````
    "id": 48,
    "title": "Italy could still get populist government as Five Star leader hints at compromise",
    "url": "https://www.independent.co.uk/news/world/europe/italy-election-latest-five-star-luigi-di-maio-populist-giuseppe-conte-a8376226.html",
    "website": "Independent",
    "list_id": null,
    "created_at": "2018-05-30T17:46:46.270Z",
    "updated_at": "2018-05-30T17:46:46.270Z"
  },
````


## Installation
Clone down a copy, Run Bundle Install, Run Rails S in your terminal.

## Contributors
  Helen Liutongco - https://github.com/hliutongco
  Kate Schlunz - https://github.com/kschlunz

## License
© [Kate Schlunz, Helen Liutongco]()
