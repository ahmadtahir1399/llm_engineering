# 🏥 CMC Vellore Health Package Summarizer

**My First LLM Project!** 🎉

A Python notebook that scrapes health checkup package data from DocOPD and uses an LLM to extract, organize, and rate all available packages with their prices.

## 📖 What It Does

This project automatically:
1. **Scrapes** the CMC Vellore health packages webpage using BeautifulSoup
2. **Extracts** clean text content from the page
3. **Sends** the data to an LLM (GPT model via OpenRouter)
4. **Generates** a comprehensive summary with:
   - Detailed comparison table of all packages
   - Prices (original vs discounted)
   - Star ratings (⭐⭐⭐⭐⭐ = Best Value)
   - Personalized recommendations for different age groups and budgets

## 🎯 Key Features

- ✅ Extracts 20+ health packages automatically
- ✅ Compares prices and discount percentages
- ✅ Rates packages by value for money
- ✅ Provides smart recommendations (young adults, seniors, budget-conscious)
- ✅ Bonus: Works with any hospital on DocOPD!

## 🛠️ Technologies Used

- **Python 3.12+**
- **requests** — HTTP requests to fetch webpages
- **BeautifulSoup4** — HTML parsing and web scraping
- **OpenAI Python SDK** — LLM API integration
- **OpenRouter** — Access to GPT models
- **Jupyter Notebook** — Interactive development

## 📋 Prerequisites

1. Python 3.12 or higher
2. OpenRouter API key (free tier available at [openrouter.ai](https://openrouter.ai))

## 🚀 Installation & Setup

1. **Clone the repository**
   ```bash
   git clone <your-repo-url>
   cd llm_engineering/week1
   ```

2. **Install dependencies**
   ```bash
   pip install requests beautifulsoup4 openai python-dotenv ipython
   ```

3. **Set up your API key**
   
   Create a `.env` file in the project root:
   ```
   OPENROUTER_API_KEY=sk-or-your-key-here
   ```
   
   > ⚠️ **Never commit your `.env` file to GitHub!** Make sure `.env` is in your `.gitignore`.

4. **Run the notebook**
   
   Open `cmc_vellore_summarizer.ipynb` in VS Code or Jupyter and run all cells.

## 📁 Project Structure

```
week1/
├── cmc_vellore_summarizer.ipynb  # Main notebook
├── scraper.py                     # Web scraping utilities
├── README.md                      # This file
└── .env                           # API key (DO NOT COMMIT!)
```

## 💡 How to Use

1. **Run the notebook cells in order:**
   - Cell 1: Loads libraries and API key ✅
   - Cell 2: Scrapes the CMC Vellore webpage 🌐
   - Cell 3: Sends data to LLM and displays results 🤖

2. **Try a different hospital:**
   - Run the bonus cell and enter any DocOPD URL!
   - Example: `https://www.docopd.com/en-in/lab/apollo-hospital-delhi`

## 📊 Sample Output

The LLM generates a markdown table like this:

| Package Name | Parameters | Discounted Price (₹) | Original Price (₹) | Rating |
|--------------|------------|---------------------|-------------------|--------|
| Smart Full Body Checkup | 82 | 999 | 2,120 | ⭐⭐⭐⭐⭐ |
| Winter Plus Health Checkup | 93 | 1,799 | 4,550 | ⭐⭐⭐⭐ |
| Basic Panel | 83 | 799 | 2,270 | ⭐⭐⭐ |

Plus personalized recommendations based on age and budget!

## 🎓 What I Learned

- Web scraping with **requests** and **BeautifulSoup**
- Prompt engineering — designing effective **system** and **user** prompts
- Using the **OpenAI API** to process and analyze unstructured data
- Structuring an LLM project from scratch
- Jupyter notebook best practices

## 🔮 Future Improvements

- [ ] Add support for multiple hospitals at once
- [ ] Export results to CSV or PDF
- [ ] Add price trend tracking over time
- [ ] Build a simple web interface with Streamlit
- [ ] Compare packages across different hospitals

## 📝 License

MIT License — feel free to use and modify!

## 🙏 Acknowledgments

- Built as part of an LLM Engineering learning journey
- Data source: [DocOPD](https://www.docopd.com)
- LLM powered by [OpenRouter](https://openrouter.ai)

---

**Made with ❤️ by Akshat Dubey**  
*If you found this useful, give it a ⭐ on GitHub!*
