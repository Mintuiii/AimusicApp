# 🎧 AI Music Discovery App

A full-stack web application that uses Google's Gemini AI to analyze your music taste and recommend lesser-known artists. The app fetches album artwork and 30-second audio previews using the iTunes Search API.

## ✨ Features

* **AI-Powered Analysis:** Uses Google Gemini (model `gemini-2.5-flash`) to generate descriptive tags (genres, moods, themes) based on artists you like.
* **Smart Recommendations:** Suggests 5 "underrated" or lesser-known artists to help you discover new music, avoiding mainstream hits.
* **Rich Metadata:** Automatically fetches artist images and album artwork.
* **Audio Previews:** Listen to 30-second clips of the recommended artists directly in the browser (via iTunes API).
* **Clean UI:** A responsive and simple React interface.

## 🛠️ Tech Stack

**Frontend:**
* React.js
* Create React App
* CSS (Inline & Modules)

**Backend:**
* Python 3
* FastAPI
* Google Generative AI SDK (`google-generativeai`)
* iTunes Search API (No authentication required)
* Last.fm API (Optional, for higher-res artist images)

## 🚀 Getting Started

Follow these instructions to get the project running on your local machine.

### Prerequisites

* **Node.js** (v14 or higher)
* **Python** (v3.8 or higher)
* A **Google Gemini API Key** (Get one [here](https://aistudio.google.com/))

---

### 1. Backend Setup

Navigate to the backend directory and set up the Python environment.

1.  **Navigate to the folder:**
    ```bash
    cd backend
    ```

2.  **Create a virtual environment (optional but recommended):**
    ```bash
    python -m venv venv
    # Windows
    venv\Scripts\activate
    # Mac/Linux
    source venv/bin/activate
    ```

3.  **Install dependencies:**
    ```bash
    pip install -r requirements.txt
    ```

4.  **Configure Environment Variables:**
    Create a file named `.env` in the `backend/` folder and add your API keys:
    ```env
    GEMINI_API_KEY="your_actual_gemini_key_here"
    # Optional: Add Last.fm key if you want better artist images
    LASTFM_API_KEY="your_lastfm_key_here"
    ```

5.  **Run the Server:**
    ```bash
    uvicorn main:app --reload
    ```
    The backend will start at `http://127.0.0.1:8000`. You can check `http://127.0.0.1:8000/health` to confirm it is running.

---

### 2. Frontend Setup

Open a new terminal window and set up the React client.

1.  **Navigate to the folder:**
    ```bash
    cd frontend
    ```

2.  **Install dependencies:**
    ```bash
    npm install
    ```

3.  **Start the application:**
    ```bash
    npm start
    ```
    The app should open automatically at `http://localhost:3000`.

## 🎮 How to Use

1.  Open the app in your browser (`http://localhost:3000`).
2.  In the text box, type a list of artists you enjoy (comma-separated).
    * *Example:* "Lamp, Nujabes, Tomppabeats"
3.  Click **"Discover Music"**.
4.  Wait a moment for the AI to analyze your taste.
5.  View the descriptive "Vibe Tags" and explore the recommended artists with audio previews!

## 📂 Project Structure

```text
.
├── backend/
│   ├── main.py           # FastAPI server & AI logic
│   ├── requirements.txt  # Python dependencies
│   └── .env              # API Keys (Create this yourself)
└── frontend/
    ├── public/           # Static assets
    ├── src/
    │   ├── App.js        # Main React component
    │   └── index.js      # Entry point
    └── package.json      # Node dependencies
