# Himanshu Khare — Senior Mobile Systems Architect Portfolio

[![Jaspr Framework](https://img.shields.io/badge/Framework-Jaspr%20(Dart%20Web)-02569B?logo=dart&logoColor=white)](https://docs.page/schultek/jaspr)
[![Deployment](https://img.shields.io/badge/Deploy-GitHub%20Pages-22C55E?logo=github&logoColor=white)](https://himanshu-khare.github.io/)
[![Live Tawft UI](https://img.shields.io/badge/Tawft%20UI-100%2B%20Widgets-6366F1)](https://tawftapp.github.io/)
[![Firebase Project](https://img.shields.io/badge/Firebase-portfolio--e3e4a-FFA611?logo=firebase&logoColor=black)](https://console.firebase.google.com/project/portfolio-e3e4a)

A modern, high-converting, dark-mode developer portfolio website built in **Jaspr (Dart Web Framework)** for **Himanshu Khare** (Senior Mobile Systems Architect — Flutter | Native Android Kotlin | iOS Swift, 6.5+ Years Experience).

---

## 📱 Mobile Architect UI Features

1. **Interactive Phone Dock in Hero:**
   - Interactive CSS **iPhone 16 Pro / Pixel 9 Pro Device Frame** with Dynamic Island.
   - Interactive tab selector switching live views between:
     - `AsInt Enterprise` (Industrial Asset Integrity, Drift SQLite SSOT, 60 FPS)
     - `Motilal Oswal` (Low-latency Protobuf binary trading desk revamp)
     - `Tawft UI Kit` (100+ open-source Flutter/Jaspr components directory)
     - `Client Apps (25+)` (Global commercial deployments)

2. **"Architecture X-Ray" Flip Cards (Apple Bento Grid):**
   - Each major showcase card features a live toggle: **[UI Preview]** vs. **[Architecture X-Ray]**.
   - Toggling **X-Ray Mode** flips the card to reveal the internal system schematic:
     - `Presentation (Riverpod .select()) ➔ Drift SQLite (SSOT) ➔ Background Dart Isolates ➔ Pigeon BLE Hardware Bridge & SAP BTP Cloud Sync`
     - Concrete metrics: 60 FPS, <15ms Protobuf tick streaming, multi-MB JSON parsing without frame drops.

3. **Dynamic Firebase Project Vault (25+ Projects):**
   - Directly maps to Firebase Storage (`gs://portfolio-e3e4a.appspot.com/o/`):
     - `agrobid`, `autogott`, `awblo`, `countdown`, `direct2u`, `dream11`, `ecom`, `ewallet`, `feedbacks`, `fitoose`, etc.
   - Category filtering: `All (25+)`, `Enterprise & Offline-First`, `Fintech & RMG`, `E-Commerce & Consumer`, `Open-Source & UI Kits`.
   - Clicking any project opens the **Mobile App Inspector Modal** featuring a scrollable phone frame carousel with screenshot previews, technical data flows, tech stack badges, and Google Play Store links.

4. **Interactive Digital Resume & PDF Download:**
   - Full in-depth digital resume modal with native browser print optimization (`window.print()`).
   - Direct download link to `web/assets/himanshu_khare_resume.pdf`.

---

## 🛠️ Tech Stack & Directory Structure

- **Framework:** Jaspr 0.22.x (Dart Web in static pre-rendering + client hydration mode)
- **Styling:** Custom Obsidian Dark-Mode Glassmorphism (`#090D16`), Tailwind CSS, Inter & JetBrains Mono typography
- **Data & Storage:** Firebase Storage REST API (`portfolio-e3e4a.appspot.com`) with local fallback caching

```
my_portfolio/
├── .github/workflows/
│   └── deploy.yml                       # Automated GitHub Actions Pages deployment
├── lib/
│   ├── components/
│   │   ├── app_inspector_modal.dart     # Mobile Phone Frame Modal Carousel
│   │   ├── bento_architecture_showcase.dart # Flagship Bento Grid with X-Ray Flip
│   │   ├── experience_timeline.dart     # 6.5+ Yrs Mobile Experience Timeline
│   │   ├── footer.dart                  # Minimalist obsidian footer & channels
│   │   ├── hero_phone_dock.dart         # Split Hero + Interactive Device Dock
│   │   ├── navbar.dart                  # Glassmorphic Sticky Header
│   │   ├── project_vault_grid.dart      # 25+ Firebase Project Vault Grid
│   │   ├── resume_modal.dart            # Interactive Printable Resume Modal
│   │   └── skills_matrix.dart           # 6-Domain Technical Competencies
│   ├── models/
│   │   ├── experience_model.dart
│   │   ├── project_model.dart
│   │   └── skill_model.dart
│   ├── pages/
│   │   └── home_page.dart               # Integrated Single-Page Architecture
│   ├── services/
│   │   └── firebase_portfolio_service.dart # Firebase Storage & Catalog Service
│   ├── app.dart                         # Client Root App Component
│   ├── main.client.dart                 # Client Hydration Entrypoint
│   └── main.server.dart                 # Static Site Pre-Renderer Entrypoint
├── web/
│   ├── assets/
│   │   └── himanshu_khare_resume.pdf    # Official Resume PDF
│   ├── favicon.ico
│   └── styles.css                       # Obsidian Glassmorphic & Phone Chassis CSS
└── pubspec.yaml
```

---

## 🚀 Running Locally & Building

### Prerequisites
- Dart SDK `^3.10.0`
- Flutter (optional)

### 1. Install Dependencies
```bash
dart pub get
```

### 2. Run Local Development Server
```bash
dart pub global run jaspr_cli:jaspr serve
```
Open `http://localhost:8080` in your browser.

### 3. Build for Production (GitHub Pages)
```bash
dart pub global run jaspr_cli:jaspr build --verbose
```
The optimized static bundle (HTML, minified JavaScript, CSS, assets) will be compiled to `build/jaspr`.

---

## 🌐 Deployment to GitHub Pages

This repository includes `.github/workflows/deploy.yml` which automatically builds and deploys the static Jaspr site to `https://himanshu-khare.github.io/` on every push to `main`.

To deploy manually:
```bash
git add .
git commit -m "feat: Senior Mobile Systems Architect Portfolio in Jaspr"
git branch -M main
git remote add origin https://github.com/himanshu-khare/himanshu-khare.github.io.git
git push -u origin main
```
