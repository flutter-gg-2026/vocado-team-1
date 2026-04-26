# 🎙️ VocaDo – Voice to Task Manager App

VocaDo is a Flutter-based smart task management application that converts voice instructions into structured tasks using AI and organizes them inside a collaborative dashboard system.

The system supports multiple user roles such as Admin and User and provides task tracking across different statuses.

---

# 📌 Project Idea

VocaDo transforms spoken instructions into actionable structured tasks:

Voice → Speech-to-Text → AI Parsing → JSON Task → Task Dashboard

This helps teams manage workflows faster and smarter.

---

# 🎥 Demo Video

Watch demo video here:



https://github.com/user-attachments/assets/6d8c2d39-7066-499f-be69-e75ed2038eff



---

# 🖼️ Screenshots

Add screenshots here:

### Sign up / Sign in

<img width="1320" height="2604" alt="IMG_5690" src="https://github.com/user-attachments/assets/8730b88f-395e-4431-9d06-7f80df73064c" />

<img width="1299" height="2605" alt="IMG_5689" src="https://github.com/user-attachments/assets/34b4643d-d3b5-4a17-98a1-eda2559b38cf" />

### Profile Settings

<img width="1320" height="2611" alt="IMG_5691" src="https://github.com/user-attachments/assets/c74492d1-c85e-4b1a-b3b4-b34abd608db2" />

### Log out confirmation

<img width="1320" height="2586" alt="IMG_5699" src="https://github.com/user-attachments/assets/0b63595b-fbb7-45de-b40b-be3b5f7fa97e" />

### Task Details

<img width="1320" height="2598" alt="IMG_5698" src="https://github.com/user-attachments/assets/95326f86-1a4d-4a5f-bccf-068eaa1d087f" />


### Admin Dashboard

<img width="1320" height="2598" alt="IMG_5700" src="https://github.com/user-attachments/assets/2a2fb078-bdf0-4e8e-bc6d-5ac407256742" />


### User Dashboard

<img width="1320" height="2586" alt="IMG_5692" src="https://github.com/user-attachments/assets/d4b39509-1c0f-408a-9772-b241b4aa3f98" />


### Speech to task feature flow

<img width="1320" height="2605" alt="IMG_5693" src="https://github.com/user-attachments/assets/37e439f9-4fb0-44f9-b452-5c9c728bb6cd" />

<img width="1320" height="2590" alt="IMG_5694" src="https://github.com/user-attachments/assets/0a6b2c39-feca-463d-a4c9-3e81c7a42d22" />

<img width="1320" height="2603" alt="IMG_5696" src="https://github.com/user-attachments/assets/084d848d-f912-4e40-a4e3-d401941754bc" />

<img width="1320" height="2601" alt="IMG_5697" src="https://github.com/user-attachments/assets/03637b7d-8944-4f51-bbd6-a66361f79dbe" />

<img width="1320" height="2598" alt="IMG_5698" src="https://github.com/user-attachments/assets/95326f86-1a4d-4a5f-bccf-068eaa1d087f" />
---

# ✨ Features

## Authentication System

- User Sign Up
- User Sign In
- Supabase Authentication
- Session handling
- Role detection system

---

## Voice AI System

- Speech-to-Text conversion
- AI parsing using LLM
- Converts voice input into structured task JSON
- Sends parsed tasks into database

---

## Role-Based Navigation

System detects role from:

user_role table

Then routes user automatically:

admin → Admin Dashboard  
user → User Dashboard

---

## Admin Dashboard

Admin can view:

- New Tasks count
- In Progress Tasks count
- Late Tasks count

Screen:

HomeFeatureScreen

---

## User Dashboard

User sees personal dashboard interface prepared for task tracking.

Screen:

UserDashboardFeatureScreen

---

## Tasks Board

TasksFeatureScreen includes:

Tabs:

New  
In Progress  
Late

Tasks filtered dynamically based on status.

---

## Task Details Screen

TaskDetailsFeatureScreen displays:

- title
- description
- status
- approve button

Navigation handled using GoRouter with entity passing.

---

## Bottom Navigation Bar

Navigation between:

Tasks  
Home  
Profile

Implemented across main screens.

---

# 🧱 Architecture

Project follows Clean Architecture:
lib/
├── core/
│ ├── config
│ ├── navigation
│ ├── services
│ └── dependency injection
│
├── features/
│ ├── auth
│ ├── home
│ ├── tasks
│ └── voice_ai


Layers:

Data Layer  
Domain Layer  
Presentation Layer

State Management:

Cubit (BLoC)

---

# 🗄️ Database Structure (Supabase)

## users table

Stores:

id  
name  
email  

---

## user_role table

Stores:

id  
role

Relationship:

users.id = user_role.id

---

## tasks table

Stores:

id  
title  
description  
status  
assigned_to  
assigned_by  
due_date  
created_at  

---

## Task Status Values

New  
In Progress  
Late

---

# 🧭 Navigation System

Using GoRouter

Main Routes:

Routes.home  
Routes.userDashboard  
Routes.tasks  
Routes.taskDetails  

Role logic currently prepared and connected to:

user_role table

---

# 🛠️ Tech Stack

Flutter  
Dart  
Supabase  
Cubit / BLoC  
GoRouter  
GetIt  
Injectable  
Freezed  
Json Serializable  
Multiple Result  
Envied  
GetStorage  
Easy Localization  
Sizer  

---

# 👩‍💻 Team Contributions

## Authentication Feature

Handled by:

Dana

Includes:

Sign Up  
Sign In  
Session handling  
Supabase auth integration  

---

## Voice AI Feature

Handled by:

Hanoof & Dana

Includes:

Speech-to-Text  
AI parsing  
JSON task generator  

---

## Tasks Viewer Feature

Handled by:

Nora

Includes:

TasksFeatureScreen  
TaskDetailsFeatureScreen  
HomeFeatureScreen (Admin Dashboard)  
UserDashboardFeatureScreen  
BottomNavigationBar  
 

---

## Database Design

Handled by:

Dana

Includes:

users table  
user_role table  
tasks table relationships  

---

# 🚀 Run Project

Clone repo:


git clone REPOSITORY_LINK_HERE


Open project:


cd voca_do_app


Install dependencies:


flutter pub get


Generate files:


dart run build_runner build --delete-conflicting-outputs


Run app:


flutter run


---



# 📄 License

Educational project – Tuwaiq Academy
