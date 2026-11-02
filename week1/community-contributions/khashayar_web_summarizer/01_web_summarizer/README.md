# 🥊 Summarization Battle: Ollama vs. OpenAI Judge

This mini-project pits multiple **local LLMs** (via [Ollama](https://ollama.ai)) against each other in a **web summarization contest**, with an **OpenAI model** serving as the impartial judge.  
It automatically fetches web articles, summarizes them with several models, and evaluates the results on **coverage, faithfulness, clarity, and conciseness**.

---

## 🚀 Features
- **Fetch Articles** – Download and clean text content from given URLs.
- **Summarize with Ollama** – Run multiple local models (e.g., `llama3.2`, `phi3`, `deepseek-r1`) via the Ollama API.
- **Judge with OpenAI** – Use `gpt-4o-mini` (or any other OpenAI model) to score summaries.
- **Battle Results** – Collect JSON results with per-model scores, rationales, and winners.
- **Timeout Handling & Warmup** – Keeps models alive with `keep_alive` to avoid cold-start delays.

---

## 📂 Project Structure
```
01_web_summerizer
├── urls.txt              # Dictionary of categories → URLs
├── battle_results.json   # Summarization + judging results
├── main.py               # Main script
├── requirements.txt      # Dependencies
└── README.md             # You are here
```

---

## ⚙️ Installation

1. **Clone the repo**:
   ```bash
   git clone https://github.com/khashayarbayati1/wikipedia-summarization-battle.git
   cd summarization-battle
   ```

2. **Install dependencies**:
   ```bash
   pip install -r requirements.txt
   ```

   Minimal requirements:
   ```txt
   requests
   beautifulsoup4
   python-dotenv
   openai>=1.0.0
   httpx
   ```

3. **Install Ollama & models**:
   - [Install Ollama](https://ollama.ai/download) if not already installed.
   - Pull the models you want:
     ```bash
     ollama pull llama3.2:latest
     ollama pull deepseek-r1:1.5b
     ollama pull phi3:latest
     ```

4. **Set up OpenAI API key**:
   Create a `.env` file with:
   ```env
   OPENAI_API_KEY=sk-proj-xxxx...
   ```

---

## ▶️ Usage

1. Put your URL dictionary in `urls.txt`, e.g.:
   ```python
   {
     "sports": "https://en.wikipedia.org/wiki/Sabermetrics",
     "Politics": "https://en.wikipedia.org/wiki/Separation_of_powers",
     "History": "https://en.wikipedia.org/wiki/Industrial_Revolution"
   }
   ```

2. Run the script:
   ```bash
   python main.py
   ```

3. Results are written to:
   - `battle_results.json`
   - Printed in the terminal

---

## 🏆 Example Results

Sample output (excerpt):

```json
{
  "category": "sports",
  "url": "https://en.wikipedia.org/wiki/Sabermetrics",
  "scores": {
    "llama3.2:latest": { "score": 4, "rationale": "Covers the main points..." },
    "deepseek-r1:1.5b": { "score": 3, "rationale": "Some inaccuracies..." },
    "phi3:latest": { "score": 5, "rationale": "Concise, accurate, well-organized." }
  },
  "winner": "phi3:latest"
}
```

From the full run:
- 🥇 **`phi3:latest`** won in *Sports, History, Productivity*
- 🥇 **`deepseek-r1:1.5b`** won in *Politics, Technology*

---

## 💡 Ideas for Extension
- Add more Ollama models (e.g., `mistral`, `gemma`, etc.)
- Try different evaluation criteria (e.g., readability, length control)
- Visualize results with charts
- Benchmark runtime and token usage

---

## 🏁 Author
Khashayar Bayati, Ph.D.
GitHub: github.com/Khashayarbayati1
