# Book API - Ruby on Rails with MongoDB

This project is a simple RESTful API built using Ruby on Rails and MongoDB for managing books.

## Folder Structure

```
book_api/
|-- app/
|   |-- controllers/
|   |   |-- books_controller.rb
|   |-- models/
|   |   |-- book.rb
|-- config/
|   |-- initializers/
|   |   |-- cors.rb
|   |-- routes.rb
|-- db/
|   |-- seeds.rb
|-- Gemfile
|-- Gemfile.lock
|-- README.md
```

- `app/controllers/`: Contains the controllers responsible for handling API requests and responses.
- `app/models/`: Holds the Mongoid model classes that interact with MongoDB.
- `config/initializers/`: Includes custom initialization files (e.g., CORS configuration).
- `config/routes.rb`: Defines the API routes and maps them to the appropriate controllers.
- `db/seeds.rb`: Optional seed data for the database to be used during development/testing.
- `Gemfile` and `Gemfile.lock`: Lists the required gems and their versions.
- `README.md`: This file! Documentation explaining the project and how to use it.

## Code Explanation

- **Book Model (`app/models/book.rb`):**
  The Book model is defined using Mongoid and represents the `books` collection in MongoDB. It has three fields: `title`, `author`, and `genre`.

- **Books Controller (`app/controllers/books_controller.rb`):**
  The BooksController handles API requests related to books. It implements five actions: `index`, `show`, `create`, `update`, and `destroy`.

  - `index`: Fetches all books from the database and returns them as a JSON array.
  - `show`: Retrieves a specific book based on its ID and returns it as a JSON object.
  - `create`: Creates a new book in the database based on the JSON data received and returns the created book as a JSON object.
  - `update`: Updates an existing book in the database based on the provided ID and JSON data, then returns the updated book as a JSON object.
  - `destroy`: Deletes a book from the database based on its ID.

## API Examples

Below are some examples of how to use the Book API:

- **Get all books:**
  - Method: GET
  - URL: `http://localhost:3000/books`

- **Create a new book:**
  - Method: POST
  - URL: `http://localhost:3000/books`
  - Headers: `Content-Type: application/json`
  - Body (raw JSON):
  ```json
  {
      "book": {
          "title": "Sample Book",
          "author": "John Doe",
          "genre": "Fiction"
      }
  }
  ```

- **Get a specific book:**
  - Method: GET
  - URL: `http://localhost:3000/books/:id`
  - Replace `:id` with the ID of the book you want to retrieve. For example: `http://localhost:3000/books/1`

- **Update a book:**
  - Method: PUT
  - URL: `http://localhost:3000/books/:id`
  - Headers: `Content-Type: application/json`
  - Body (raw JSON):
  ```json
  {
      "book": {
          "title": "Updated Book Title",
          "author": "Jane Doe",
          "genre": "Science Fiction"
      }
  }
  ```
  - Replace `:id` with the ID of the book you want to update. For example: `http://localhost:3000/books/1`

- **Delete a book:**
  - Method: DELETE
  - URL: `http://localhost:3000/books/:id`
  - Replace `:id` with the ID of the book you want to delete. For example: `http://localhost:3000/books/1`

## Setup and Running the Project

1. Install Ruby and Rails on your system.

2. Install MongoDB and make sure it's running.

3. Clone this repository.

4. Install the required gems by running `bundle install`.

5. Start the Rails server with `rails s`.

6. You can now use Postman or any other HTTP client to interact with the API using the examples provided above.

---

