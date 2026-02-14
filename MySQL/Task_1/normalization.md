# Normalization 

# Table Name
Student_Grade_Report 

# Coulmns Name
Student_Name, Student_Phone, Student_Address,
Course_Title, Instructor_Name,
Instructor_Dept, Dept_Building, Grade  


# First Normal Form (1NF) --> Remove multi-valued attributes.


Student_Phone --> Multi-valued

So:
Create a separate table for phone numbers.

Tables after 1NF:

Students
StudentID | Student_Name | Address

Student_Phones
PhoneID | StudentID | PhoneNumber


# Second Normal Form (2NF) --> Remove partial dependencies.


Student_Address repeats many times (unnecessarily).
Also Address is mixed (City, Street, Zip).

So:
Make address in own table.

Students
StudentID | Student_Name | AddressID

Addresses
AddressID | City | Street | Zip


# Third Normal Form (3NF) --> Remove transitive dependencies.


Dept_Building depends on Instructor_Dept, not on the Student or the Course.

So:
we separate Departments.

Departments
DeptID | Dept_Name | Dept_Building

Instructors
InstructorID | Instructor_Name | DeptID

Courses
CourseID | Course_Title | InstructorID

Grades
GradeID | StudentID | CourseID | Grade





# Tables After Normalization 

Students(StudentID, Student_Name, AddressID)
Student_Phones(PhoneID, StudentID, PhoneNumber)
Addresses(AddressID, City, Street, Zip)
Departments(DeptID, Dept_Name, Dept_Building)
Instructors(InstructorID, Instructor_Name, DeptID)
Courses(CourseID, Course_Title, InstructorID)
Grades(GradeID, StudentID, CourseID, Grade)
