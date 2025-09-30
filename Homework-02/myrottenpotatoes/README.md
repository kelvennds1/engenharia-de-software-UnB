# RottenPotatoes Movie App

A simple movie review application built with Ruby on Rails that allows users to manage and sort movies.

## Features

- View all movies in a sortable table
- Sort movies by title or release date
- Add new movies
- Edit existing movies
- Delete movies
- Visual feedback for sorting columns
- Flash messages for user actions

## Prerequisites

- Ruby 3.4.1
- Rails 8.0.3
- SQLite3

## Installation

1. Clone the repository:
```bash
git clone https://github.com/kelvennds1/engenharia-de-software-UnB/tree/main/Homework-02/myrottenpotatoes
cd myrottenpotatoes
```

2. Install dependencies:
```bash
bundle install
```

3. Setup the database:
```bash
rails db:create
rails db:migrate
```

4. Start the Rails server:
```bash
rails server
```

5. Visit http://localhost:3000 in your browser

## Usage

- Click on "Title" or "Release Date" headers to sort the movie list
- Use "Add new movie" to create a new movie entry
- Click "More about this movie" to see movie details
- Use "Edit" button to modify movie information
- Use "Delete" button to remove a movie

## Implementation Details

- Uses HAML for views
- Implements RESTful routes
- Features sorting functionality with visual feedback
- Uses Rails form helpers for data input
- Implements flash messages for user feedback
- Uses CSS for styling and visual enhancements

## Development

To run the application in development mode:

```bash
rails server
```

To stop the server:
```bash
# Press Ctrl+C in the terminal where the server is running
```
