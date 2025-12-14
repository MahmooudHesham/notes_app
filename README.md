# 📝 Notes App

A beautiful and functional Notes Application built with **Flutter**. This app allows users to create, edit, delete, and search notes with a clean and modern UI. It uses local storage to persist data efficiently.

![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)
![Hive](https://img.shields.io/badge/Hive-FCC624?style=for-the-badge&logo=hive&logoColor=black)

## 📱 Screenshots

| Home Screen | Add Note | Edit Note |
|:---:|:---:|:---:|
| <img src="screenshots/home.png" width="450"/> | <img src="screenshots/add.png" width="450"/> | <img src="screenshots/edit.png" width="450"/> |

## ✨ Features

* **Create Notes:** Easily add new notes with a title and content.
* **Edit & Delete:** Update existing notes or remove them permanently.
* **Search:** Filter notes quickly to find what you need. (🚧 Coming Soon)
* **Custom Colors:** Assign different colors to notes for better organization.
* **Local Storage:** All data is saved locally using **Hive**, so notes persist even after closing the app.
* **Responsive UI:** Works smoothly on different screen sizes.

## 🛠️ Tech Stack

* **Framework:** Flutter
* **Language:** Dart
* **State Management:** Flutter Bloc (Cubit)
* **Local Database:** Hive
* **UI Components:** Custom Fonts, Modal Bottom Sheets, Custom appbar.

## 🚀 Getting Started

Follow these steps to run the project locally.

### Prerequisites
* Flutter SDK installed.
* VS Code or Android Studio.

### Installation

1.  **Clone the repository:**
    ```bash
    git clone [https://github.com/your-username/notes-app.git](https://github.com/your-username/notes-app.git)
    ```

2.  **Navigate to the project folder:**
    ```bash
    cd notes_app_flutter
    ```

3.  **Install dependencies:**
    ```bash
    flutter pub get
    ```

4.  **Run the app:**
    ```bash
    flutter run
    ```

## 📂 Project Structure

```text
lib/
├── cubits/          # State Management (AddNoteCubit, NotesCubit)
├── models/          # Hive Note Model
├── views/           # UI Screens (NotesView, EditNoteView)
├── widgets/         # Custom Widgets (NoteItem, CustomTextField)
└── main.dart        # Entry point
