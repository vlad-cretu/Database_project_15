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

## Queries

All queries are in [queries.sql](./Week_3/src/queries.sql).

Here are the queries documented.

### Which students have given feedback to all lectures of a particular course?
- **Question:** Lists the students who left feedback on every lecture of a given course.
- **Relevance:** These students followed the whole course and commented on all of it, so their feedback covers the full course. Lecturers and the education committee can use them as the most reliable source when evaluating a course as a whole or invite them to a course evaluation panel.

### Query 1: Which students have given feedback to lectures taught by a specific lecturer?
- **Question:** Lists the students who gave feedback on the lectures of one lecturer.
- **Relevance:** Shows a lecturer who is actually giving them feedback. This helps the lecturer judge how representative the feedback is and follow up with those students to clarify what was unclear.

### New query 1: For each course, how many different students have given feedback on its lectures? (Fener27)
- **Question:** Counts per course the number of distinct students who gave feedback on any of its lectures, from most to fewest.
- **Relevance:** Feedback is only actionable if enough students take part. Courses with few or no students giving feedback are blind spots where the education committee cannot judge lecture clarity, so it knows where to encourage students to give feedback.

### New query 2: Which lectures have not received any feedback yet, and who teaches them? (Fener27)
- **Question:** Lists every lecture without any feedback, together with its lecturer, oldest first.
- **Relevance:** A lecture without feedback cannot be evaluated or improved. Lecturers can see which of their lectures still need input and ask students for it, and old lectures that still have no feedback point to a gap in how feedback is collected.

### New query 3: Which lectures receives the most student feedback ?(neyzar7)
- **Question:** Lists the lectures with the most feedbacks
- **Relevance:** This shows which lectures get the most attention from students. This helps lecturers know to consult these first since they have the most engagement. 

### New query 4: How many students does each university have ? (neyzar7)
- **Question:** Counts the number of students per university
- **Relevance:** It shows how many people at each university could use the feedback system. It helps us see where the system reaches the most students and the universities that have a few registered students. This gives us a feedback to learn from by asking the lowest and highest university why they have many or few students registered.

### New Query 5: Which Students have submitted no feedback to any given lecture? (DavidNgounou)
-**Relevance** This query can help to a university to evaluate the efficiency of student engagement by identifying students who have not provided any feedback.
With such a query the university can take necessary actions to improve student participation and feedback collection.

### New Query 6: Which courses offered by a university have the least amount of feedback. (DavidNgounou)
=**Relevance** 
This query identifies courses that have received less feedback compared to all other courses.
It can help to identify courses that may need more attention or improvement in order to increase student engagement and feedback.

### New Query 9: Which lecturers are getting the most varied feedback from the students? (vlad-cretu)

Question: Calculates the number of unique students who submitted feedback to each lecturer in each of his/her lectures
Relevance: This indicates the breadth of each lecturer's interaction with the students, rather than the number of responses received. Breadth ensures that the feedback represents the whole class and therefore provides valuable input for teaching improvement. It also draws attention to lecturers whose feedback comes from a very narrow segment of the class, where engagement needs to be fostered.

### New Query 10: Which lectures have received zero feedback? (vlad-cretu)

Question: Lists the lectures without any feedback submissions
Relevance: There is information even in silence. The lectures listed here are not receiving any student feedback possibly due to lack of reminders or because the feedback does not seem important to the students. Identifying such lectures will enable the university to deal with them, thereby achieving our aim of receiving the feedback during the course.

## Are the queries yielding meaningful results?

Partially. Queries execute and yield the proper form of answer, but they are only as meaningful as the input data used.

What works well: the universities and lecturers have been added from realistic data, hence any query listing or counting them yields meaningful output.

What is still not meaningful: the feedback-based queries constitute the essence of the stakeholder case, but they are dependent on the Feedback, Lecture and Student tables to have realistic and unequal amounts of data. Where there is little or even distribution of feedback, then the query "which lectures receive the most feedback" yields nothing meaningful. The feedback table does not have a rating, only a comment; hence we can count but not distinguish the quality of feedback. Feedback lacks a submission date, thus trends of feedback across a semester cannot be established.

### Requirements for updates:

Rating 1 to 5 to feedback to rate the sentiment of feedback not the volume.
Submission Date to feedback to be able to establish trends.
Realistic and unequal data populated in the Feedback, Lecture and Student table.
Student enrollment linked to course.
