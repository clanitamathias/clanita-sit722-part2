# Use an official Python runtime as a parent image
FROM python:3.9

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy requirements file and install dependencies
COPY book_catalog/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt


# Copy the rest of the application code
COPY book_catalog/ .

# Expose port 8000 for the application
EXPOSE 8000

# Set environment variable for the database URL
# ENV DATABASE_URL="postgresql://clanita_sit722_part1_8nso_user:SP8eRKsjZKxIzzx72MOboE9PYOIF7RSL@dpg-crt76s5ds78s73eccdog-a.oregon-postgres.render.com/clanita_sit722_part1_8nso"

# Command to run the application using uvicorn
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]