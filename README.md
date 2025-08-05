# 🍽️ Recipe API – Django + Django REST Framework

A RESTful API for managing cooking recipes, built with Django and Django REST Framework.  
Developed using **Test Driven Development (TDD)**, PostgreSQL as the database, Docker for deployment, and includes **Swagger** for interactive API documentation.

---

## 🚀 Main Features

- 🔐 Token-based Authentication
- 👤 User registration and login via token
- 🍽️ CRUD operations for recipes (per user)
- 🧂 Ingredient management (can be assigned or unassigned to recipes)
- 🏷️ Tag management (can be assigned or unassigned to recipes)
- 🐘 PostgreSQL database
- 🐳 Docker support
- 🧪 Developed using TDD (Test Driven Development)
- 📄 Interactive API documentation with **Swagger**

---

## 🧪 Test Driven Development (TDD)

This project follows **TDD** methodology:

- Tests are written before implementing features
- Code is implemented to make tests pass
- Code is refactored with safety due to full test coverage

Run all tests with:

```bash
docker-compose run app sh -c "python manage.py test"
```

## 📄 API Documentation (Swagger)

Interactive API docs are available at:

http://localhost:8000/api/docs/

Here you can:

- View available endpoints
- Test requests and responses
- Explore parameters, payloads, and responses

Swagger is automatically generated from the Django REST Framework views and serializers.

## 🐳 Docker Setup

### 🛠️ Build the Docker image

```bash
docker build .

````

▶️ Run the Docker containers

```bash
docker-compose up
```

#### This will start

- Django app

- PostgreSQL database

- The API will be available at:
👉 http://localhost:8000/api/

- Swagger docs:
👉 http://localhost:8000/api/docs/
