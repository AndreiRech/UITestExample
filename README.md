# 🧪 UI Testing Demo Project

A simple iOS project to demonstrate how to build awesome, easy-to-maintain UI tests with **XCUITest** and the **Page Object Model (POM)**.

## 🚀 How to Run the Tests

Get the tests running in a few clicks!

1.  **Open the project** 📂
    * Launch the `UITesting.xcodeproj` file in Xcode.
2.  **Run All Tests** ▶️
    * Go to the Test Navigator (`Cmd + 5`).
    * Click the play button next to the `UITestingUITests` target or simply press `Cmd + U`.
3.  **Run a Single Test** 🎯
    * Open a test file like `UIDeleteTests.swift`.
    * Click the diamond icon ♦️ next to any test function to run just that one.

## 🛠️ Testing Strategy

This project uses a modern testing strategy to keep tests clean and robust.

* **Page Object Model (POM)** 📄
    * Each screen has its own "Page Object" class, organizing UI elements and user actions neatly. This makes tests super readable and easy to update.

* **Accessibility Identifiers** 🏷️
    * We use unique IDs from `UIIdentifiers.swift` to find UI elements. No more flaky tests that break when you change a button's text!

* **Clean & Independent Tests** ✨
    * Each test is self-contained and has a descriptive name so you know exactly what it does. No more guessing games when a test fails!
