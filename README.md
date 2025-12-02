# Union Shop — Flutter Coursework

This repository contains the coursework project for students enrolled in the **Programming Applications and Programming Languages (M30235)** and **User Experience Design and Implementation (M32605)** modules at the University of Portsmouth.

## Overview

The Student Union has an e-commerce website, which you can access via this link: [shop.upsu.net](https://shop.upsu.net)

In short, your task is to recreate the same website using Flutter. You must not start from scratch, as you need to begin by forking the GitHub repository that contains the incomplete code. [The getting started section of this document](#getting-started) will explain more. Once you have completed the application, you will submit the link to your forked repository on Moodle for assessment and demonstrate your application in a practical session. See the [submission](#submission) and [demonstration](#demonstration) sections for more information.

⚠️ The UPSU.net link on the navbar of the union website is a link to an external site. This is not part of the application that you need to develop. So ignore the link highlighted below:

![Union Shop Header](https://raw.githubusercontent.com/manighahrmani/sandwich_shop/refs/heads/main/images/screenshot_union_site_header.png)

## Getting Started

### Prerequisites

You have three options for your development environment:

1. **Firebase Studio** (browser-based, no installation required)
2. **University Windows computers** (via AppsAnywhere)
3. **Personal computer** (Windows or macOS)

Below is a quick guide for each option. For more information, you can refer to [Worksheet 0 — Introduction to Dart, Git and GitHub](https://manighahrmani.github.io/sandwich_shop/worksheet-0.html) and [Worksheet 1 — Introduction to Flutter](https://manighahrmani.github.io/sandwich_shop/worksheet-1.html).

**Firebase Studio:**

- Access [idx.google.com](https://idx.google.com) with a personal Google account
- Create a new workspace (template selection not needed for this coursework)
- Clone your forked repository using the command palette

University Computers:

- Open [AppsAnywhere](https://appsanywhere.port.ac.uk/sso) and launch the following in the given order:
  - Git
  - Flutter And Dart SDK
  - Visual Studio Code

Personal Windows Computer:

- Install [Chocolatey package manager](https://chocolatey.org/install)
- Run in PowerShell (as Administrator):

  ```bash
  choco install git vscode flutter -y
  ```

Personal macOS Computer:

- Install [Homebrew package manager](https://brew.sh/)
- Run in Terminal:

  ```bash
  brew install --cask visual-studio-code flutter
  ```

After installation, verify your setup by running:

```bash
flutter doctor
```

This command checks your environment and displays a report of the status of your Flutter installation.

For detailed step-by-step instructions, refer to [Worksheet 1 — Introduction to Flutter](https://manighahrmani.github.io/sandwich_shop/worksheet-1.html), which covers the complete setup process for all three options.

### Fork the Repository

Go to the repository containing the code for the coursework and click on the fork button as shown in the screenshot: [github.com/manighahrmani/union_shop/fork](https://github.com/manighahrmani/union_shop/fork) (Alternatively, just use this link: [github.com/manighahrmani/union_shop/fork](https://github.com/manighahrmani/union_shop/fork).)

![Fork Button](https://raw.githubusercontent.com/manighahrmani/sandwich_shop/refs/heads/main/images/screenshot_fork_button.png)

Do not change anything and click on the Create fork button. You should then have a public fork of my repository with a URL like (YOUR-USERNAME replaced with your username): [github.com/YOUR-USERNAME/union_shop](https://github.com/YOUR-USERNAME/union_shop)

![Fork Settings](https://raw.githubusercontent.com/manighahrmani/sandwich_shop/refs/heads/main/images/screenshot_fork_settings.png)

Note that the name of this created fork must be “union_shop”. If you already have a repository with this name, you need to rename it beforehand.

### Clone Your Forked Repository

If you are using Firebase Studio, head to [idx.google.com](https://idx.google.com), click on Import Repo and paste the URL of your forked repository. Name your workspace as `union_shop`.

Otherwise, open a terminal, change to your desired directory, and run the following commands:

```bash
git clone https://github.com/YOUR-USERNAME/union_shop.git
cd union_shop
```

Replace `YOUR-USERNAME` with your actual GitHub username.

### Install Dependencies

Your editor should automatically prompt you to install the required dependencies when you open the project. If not, open the integrated terminal (open the Command Palette with `Ctrl+Shift+P` or `Cmd+Shift+P` and type "Terminal: Create New Terminal") and run the following command:

```bash
flutter pub get
```

### Run the Application

This application is primarily designed to run on the **web** and should be viewed in **mobile view** using your browser's developer tools. We recommend using Google Chrome.

Select Chrome as the target device and run the application either from the `main.dart` file or by entering the following command in the terminal:

```bash
flutter run -d chrome
```

Once the app is running in Chrome, open Chrome DevTools by right-clicking on the page and selecting "Inspect" (or use the shortcut `F12`). Click the "Toggle device toolbar" button as shown in the screenshot below.

![Chrome DevTools Mobile View](https://raw.githubusercontent.com/manighahrmani/sandwich_shop/refs/heads/main/images/screenshot_chrome_devtools.png)

From the Dimensions menu, select a mobile device preset (e.g., iPhone 12 Pro, Pixel 5):

![Device Selection](https://raw.githubusercontent.com/manighahrmani/sandwich_shop/refs/heads/main/images/screenshot_chrome_devtools_device_selection.png)

## Marking Criteria

This assessment is worth 55% of the marks for the module's assessment item 1 (the remaining 45% comes from the weekly sign-offs). The mark for the assessment is divided into two components:

- **[Application (functionality) (30%)](#application)**: Demonstrated through a live demo during practical
- **[Software Development Practices (25%)](#software-development-practices)**: Assessed through your repository

⚠️ You will only receive marks if you **both** attend a practical session for the demo **and** submit the link to your forked repository on Moodle before the deadline. Failure to do either will result in a mark of 0 for the entire coursework.

For info on the overall assessment structure, visit the [Flutter Course homepage](https://manighahrmani.github.io/sandwich_shop/).

### Application

30% of the coursework mark comes from functionality demonstrated through a live demo during practical sessions. More information about the demo sessions is provided in the [demonstration section](#demonstration).

Your objective is to reimplement as many features from the existing [Union Shop website](https://shop.upsu.net) as you can in your forked repository using Flutter.

The table below is an almost comprehensive list of features present on the website, sorted by difficulty. Each feature has a corresponding percentage value indicating its weight in the 30% application mark and a reference link to the relevant page on the actual website.

⚠️ Note that this assessment focuses on functionality over visual design (do not spend a lot of time making it look exactly like the real website). You do not have to list the exact same products or collections as the real website. You are also encouraged to use copyright-free or AI-generated images instead of downloading images from the real website.

# Union Shop — Flutter Coursework

This repository is a starter Flutter project for the Union Shop coursework. The app recreates a simplified version of the Student Union e-commerce pages and provides a foundation for the coursework tasks.

Introduction
------------------
Union Shop is a small e-commerce demo built with Flutter. It lets users browse product listings, open product detail pages (images, description and price), and view a simple shopping bag UI. The code demonstrates routing, basic state management (a cart repository + view model), responsive layouts for mobile, and a set of unit/widget tests to validate behavior.

Overview
--------
Small, focused project intended for mobile view (web target recommended). Build features incrementally and follow the coursework worksheets for guidance.

Quick start
-----------
- Install Flutter and open the project in VS Code or your editor of choice.
- Fetch packages:

```bash
flutter pub get
```

- Run the app (Chrome recommended, toggle device toolbar for mobile view):

```bash
flutter run -d chrome
```

Project structure and Dart files
-------------------------------
Key source files (shallow description to help navigation):

- `lib/main.dart` — App entry, routing and the homepage (navigation to product pages).
- `lib/product_page.dart` — Product details screen (images, title, price, description, footer).
- `lib/about_us_page.dart` — Simple About page content.
- `lib/collection_page.dart` & `lib/collections_page.dart` — Collection listing and collection detail stubs.
- `lib/all_products_page.dart` — "All Products" listing page (opened from the homepage "View All" button).
 - `lib/all_products_page.dart` — "All Products" listing page (opened from the homepage "View All" button).
 - `lib/basketball_page.dart` — Basketball product detail page (image, description, original+sale price display).
 - `lib/football_page.dart` — Football product detail page (image, description, original+sale price display).
 - Tests: Basic unit and widget tests are located under the `test/` directory. Run them with `flutter test`; they cover core view models and important UI pages.

Quick verification (run locally)
--------------------------------
After pulling the latest changes, refresh assets and run the app:

```bash
flutter pub get
flutter clean
flutter run -d chrome
```

Open the app in mobile view (Chrome DevTools device toolbar). To verify the new changes:

- Home → "View All": shows all products; Basketball/Football show sale price (original struck-through + sale price).
- Product Categories → "On Sale": shows only Basketball and Football with sale prices.

If updated assets are not visible, run `flutter clean` and restart the app; asset changes require a rebuild.
- `lib/login_page.dart` — Login/signup UI skeleton.
- `lib/bag_page.dart` — Shopping cart UI (simple cart view).
- `lib/tshirt_page.dart`, `lib/pen_page.dart`, `lib/cap_page.dart`, `lib/waterbottle_page.dart`, `lib/notebook_page.dart` — Example product pages / templates used by the app.

State & data layer
------------------
- `lib/repositories/cart_repository.dart` — Small repository for cart state (adds/clears items).
- `lib/view_models/cart_view_model.dart` — `ChangeNotifier` view model used by widgets to interact with the cart repository.

Tests
-----
Basic widget and unit tests live under `test/`.

- Run tests with:

```bash
flutter test
```

- Files of interest:
  - `test/home_test.dart` — basic homepage widget tests
  - `test/product_test.dart` — product page widget tests
  - `test/repositories/*` and `test/view_models/*` — unit tests for repository and view model logic

Notes: The test suite intentionally avoids real network calls. If you add NetworkImage widgets, prefer using local assets or a stable mocking approach for widget tests.

Development notes and tips
-------------------------
- Keep changes small and commit often (clear messages). This helps demonstrate development practice for marking.
- Prefer local assets for repeatable widget tests, or add a dedicated and well-documented mock strategy if you must use network images.
- The app focuses on functionality rather than pixel-perfect styling. Implement features, add tests, and document your work in README and commit history.

Submission & demo
-----------------
- Submit the link to your forked repository on Moodle before the deadline.
- During demo, you will be asked to run the app from a fresh clone and show implemented features (10 minutes maximum).

Contact & help
--------------
If you need support, use the module’s channels (Discord / practical sessions) and follow the worksheets on the course homepage.

Acknowledgements
----------------
This starter was adapted from the original coursework materials and worksheets. Use the worksheets to complete each milestone of the project.
