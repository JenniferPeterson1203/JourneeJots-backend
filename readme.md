# JourneeJots - Travel Journal & Budgeting App (Backend)

## Overview

**JourneeJots** is a web application designed to help users document their travels and manage their budgeting. It allows users to track expenses, plan future trips, and keep detailed travel journal entries. The application incorporates features such as budgeting, planning, and sharing travel experiences. It combines two passions: travel and finances, offering users the tools to make travel more accessible by strategically managing finances.

### Tech Stack

- Node.js: JavaScript runtime used for the backend.
- Express: Web application framework for Node.js to handle routing and middleware.
- PostgreSQL: Relational database used for storing travel entries, expenses, and user data.
- JWT (JSON Web Tokens): Used for user authentication and securing API routes.
- Middleware: Custom functions for handling user authorization and request validation.
- Postman: Used for testing and validating API endpoints.

## Project Features

- User Authentication: Users can sign up and log in using JWT tokens for secure access.
- Travel Journal: Users can write, view, and edit journal entries for each trip.
- Budget Tracking: Users can set budgets and track their expenses for each trip.
- Public Sharing: Users can make their journal entries public to share their experiences and tips.
- Photo Upload (Future Feature): Users will eventually be able to upload trip photos.

## Future Plans

- Allow users to make journal entries public, helping others realize that travel is accessible with careful planning.
- Implement the ability for users to upload photos to accompany their journal entries.

## Contributions

Feel free to open issues or create pull requests if you'd like to contribute to the project. All contributions are welcome!

## Setup

1. The backend API is live and accessible at: [JourneeJots API](https://journeejots.netlify.app/trips).
2. Use tools like Postman to test API endpoints if needed. Refer to the API documentation below for details.

> Note: The backend is deployed on Render. No local setup is required.

1. Clone the repository:

- `git clone` https://journeejots-backend-2.onrender.com

2. Navigate to the project directory:

- `cd` journeejots-backend

3. Install dependencies:

- npm install

4. Add a .env file with the following environment variables:

```
DB_HOST=localhost
DB_USER=your_username
DB_PASSWORD=your_password
DB_NAME=journeejots
JWT_SECRET=your_jwt_secret

```

5. Start the backend server:

- run `npm start`

6. The backend will run at http://localhost:5000 (or as configured).

> Note: Development setup is optional and only necessary if you'd like to contribute to the project.

## Acknowledgments

- Tailwind CSS: A utility-first CSS framework that helps in building responsive and modern user interfaces.
- React: For building the frontend interface and managing state efficiently.
- Express: For building the backend API with ease and efficiency.
- PostgreSQL: A robust relational database for storing data.
