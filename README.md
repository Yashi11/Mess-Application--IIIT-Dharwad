# Mess App

A mobile application for the Institute's Hostel Mess, currently sought to be implemented @ IIIT Dharwad ( https://www.iiitdwd.ac.in/ )
This application automates and digitalizes various activities like:
- Log Keeping
- Meal Ordering
- Complaint Registering
- Complaint Analysis
- Personal Expenditure Tracking

# Structure of the Project
1. Login with Institute Mail ID 🏫
2. Each user is provided with a role of either a Faculty/Student 👨‍🏫 or a Mess-Manager 👩‍🍳 or Admin
3. User Lands on the Home Page once authentication is Succesful ✨
4. Home Page allows user to track their recent transactions/orders and the their total expenses in the past month
5. Menu Section allows Faculty to see any changes in the menu for entered Day and Meal, Mess-Managers can instead update the menu if there are any changes in the same 🍲
6. Faculty can file Complaints in Complaint Section from NavBar , For Mess-Manager a list of filled complaints is shown instead
7. User settings showcase the details of the user as registered with the institute and thus cannot be changed✅

# Snapshots
![image](https://github.com/Yashi11/Mess-Application--IIIT-Dharwad/assets/73705143/5cb7f24c-9890-42d2-b91c-dafe7e67daa4)
![image](https://github.com/Yashi11/Mess-Application--IIIT-Dharwad/assets/73705143/ab44837f-4d72-43b1-a028-5836446a77f0)
![image](https://github.com/Yashi11/Mess-Application--IIIT-Dharwad/assets/73705143/d6372093-5352-4134-9114-d468fd5a2327)


# How To Use the Project
You need to configure firebase once you start this project. This can be done as follows:
1. LogInto your firebase account by 
            
        firebase login:add yourEmail@example.com
2. Configure Flutterfire 
  
       flutterfire-configure
3. Select the required project from list of your firebase projects
4. Choose Android and Web Application for platforms

# How to Arrange Firebase Project

MessApp
   - complaints
      - complaint {String}
      - status {Boolean}
      - type {String}
      - uid {String}
      - verified {Boolean}
   - complaintsCount
      - Cleanliness issue {Number}
      - Food quality issue {Number}
      - Food serving issue {Number}
      - Food serving issue {Number}
      - Other {Number}
   - menu
      - day {String}
      - food {String}
      - meal {String}
   - orders
      - date {Timestamp}
      - day {String}
      - meal {String}
      - qty {Number}
      - uid {String}
   - users
      - name {String}
      - role {String}
   

# Pull Requests
We welcome and encourage all pull requests. It usually will take us within 24-48 hours to respond to any issue or request. Here are some basic rules to follow to ensure timely addition of your request:

   - Match the document style as closely as possible.
   - Please keep PR titles easy to read and descriptive of changes, this will make them easier to merge
   - Attach Screenshots of changes if any done in the UI/UX of the application
   - Have fun!


# Support and Contributions
Any suggestions, contributions or maintenance support from readers will be highly appreciated. 🐈
\
For any further discussion or query mail us @ \
yashasvi488@live.com \
adwait31071@gmail.com 

