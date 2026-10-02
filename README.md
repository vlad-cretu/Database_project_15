# University Lecture Feedback Database Overview

A relational database schema modeling universities, courses, lecturers, lectures, and student feedback.

## Schema
University: stores university name and location
Course: stores course names
Lecturer: stores lecturer name, surname, and email
Lecture: stores lecture title and creation date, linked to a Lecturer
Feedback: stores feedback content, linked to a student and a lecture
Course_Lecturer: junction table linking courses to the lecturers who teach them (many-to-many)

[ER diagram](./Week_2/ERD.pdf)

## Relationships
Each Lecture belongs to one Lecturer
Each Feedback entry belongs to one Lecture and one Student
Course and Lecturer are connected through Course_Lecturer, since a lecturer can teach multiple courses, and a course can have multiple lecturers

---

### Setup

Run the table creation scripts in order, since foreign key constraints require referenced tables to exist first:

- University
- Course
- Lecturer
- Lecture
- Course_Lecturer
- Student
- Feedback


https://github.com/user-attachments/assets/9ce619ef-e6f9-4e9a-b824-f1802b30f310


---

## Data Integration and Transformation
Two different open-source datasets were integrated to test our schema. The data was decoupled so the universities do not need to match the schools in the lecturer feedback. 

### Source 1: All Universities in the World (Kaggle)
    - Source: Kaggle: All Universities in the World(https://www.kaggle.com/datasets/thedevastator/all-universities-in-the-world?resource=download)

- Mapping:

    - The university name column maps to the University name attribute.
    - The country code column (e.g., "AD", "AE") maps to the University location attribute.

- Data Cleaning & Schema Updates:

    - Column Pruning: Dropped the website URL column because it falls outside the scope of our database.
    - Schema Update (Name): Increased the name data type from VARCHAR(30) to VARCHAR(120) to accommodate longer, real-world university names.
    - Schema Update (Location): Changed the location data type from VARCHAR(30) to CHAR(2) to strictly format for the 2-letter country codes provided in the dataset.
 
### Source 2: Professor Teaching Evaluations
    - Source: Mendeley: RateMyProfessor Dataset(https://data.mendeley.com/datasets/fvtfjyvw7d/1)
    
- Mapping:

    - The Id attribute for the Lecturer entity is auto-incremented by the database.
    - The professor_name column maps to the Lecturer name and surname attributes.

- Data Cleaning & Schema Updates:

    - String Splitting: The single professor_name string (e.g., "Pierre Hadaya") was split into separate name and surname columns to match the database schema.
    - Data Generation: Since the dataset lacks emails, mock email addresses were generated and inserted to fulfill the schema's requirements.
    - Column Pruning: Dropped all remaining, unnecessary columns from the dataset (such as school_name, department_name, and comments).

## Are the queries yielding meaningful results?

Partially. Queries execute and yield the proper form of answer, but they are only as meaningful as the input data used.

What works well: the universities and lecturers have been added from realistic data, hence any query listing or counting them yields meaningful output.

What is still not meaningful: the feedback-based queries constitute the essence of the stakeholder case, but they are dependent on the Feedback, Lecture and Student tables to have realistic and unequal amounts of data. Where there is little or even distribution of feedback, then the query "which lectures receive the most feedback" yields nothing meaningful. The feedback table does not have a rating, only a comment; hence we can count but not distinguish the quality of feedback. Feedback lacks a submission date, thus trends of feedback across a semester cannot be established.

### Requirements for updates:

Rating 1 to 5 to feedback to rate the sentiment of feedback not the volume.
Submission Date to feedback to be able to establish trends.
Realistic and unequal data populated in the Feedback, Lecture and Student table.
Student enrollment linked to course.
