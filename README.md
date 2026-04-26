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

Add project demo video here:

[Watch Demo Video](PASTE_VIDEO_LINK_HERE)

---

# 🖼️ Screenshots

Add screenshots here:

### Tasks Board

![Tasks Board](screenshots/tasks-board.png)

### Task Details

![Task Details](screenshots/task-details.png)

### Admin Dashboard

![Admin Dashboard](screenshots/admin-dashboard.png)

### User Dashboard

![User Dashboard](screenshots/user-dashboard.png)

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
