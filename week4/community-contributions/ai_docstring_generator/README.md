# 🚀 AI Docstring Generator

An intelligent tool that automatically generates comprehensive docstrings and comments for your code using state-of-the-art AI models (OpenAI GPT, Anthropic Claude, and Google Gemini).

![Python](https://img.shields.io/badge/Python-3.8+-blue.svg)
![License](https://img.shields.io/badge/License-MIT-green.svg)
![Gradio](https://img.shields.io/badge/Gradio-UI-orange.svg)

## ✨ Features

- 🤖 **Multi-Model Support**: Choose between GPT-4o, Claude Sonnet 4, or Gemini 2.0
- 🌍 **Multi-Language Support**: Python, JavaScript, Java, C++, Go, and Rust
- ⚡ **Real-time Streaming**: Watch documentation being generated live
- 📝 **Comprehensive Documentation**: Generates parameter descriptions, return values, exceptions, and inline comments
- 🎨 **Beautiful UI**: Clean and intuitive Gradio interface
- 📚 **Built-in Examples**: Quick start with pre-loaded code examples

## 🎯 Supported Languages

- **Python** (PEP 257, Google style)
- **JavaScript/TypeScript** (JSDoc)
- **Java** (Javadoc)
- **C++** (Doxygen)
- **Go** (Go conventions)
- **Rust** (Rust doc comments)

## 📋 Prerequisites

- Python 3.8 or higher
- API keys for at least one of the following:
  - OpenAI API key
  - Anthropic API key
  - Google API key

## 🛠️ Installation

1. **Clone the repository**
```bash
git clone {paste-this-repo-link}
cd ai-docstring-generator //navigate to this folder
```

2. **Create a virtual environment** (recommended)
```bash
python -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate
```

3. **Install dependencies**
```bash
pip install -r requirements.txt
```

4. **Set up environment variables**

Create a `.env` file in the project root:
```env
OPENAI_API_KEY=sk-your-openai-api-key-here
ANTHROPIC_API_KEY=sk-ant-your-anthropic-api-key-here
GOOGLE_API_KEY=your-google-api-key-here
```

**Note**: You only need the API key(s) for the model(s) you plan to use.

## 🚀 Usage

1. **Run the application**
```bash
python docstring_generator.ipynb
```

2. **Access the interface**
   - The app will automatically open in your default browser

3. **Generate documentation**
   - Select your programming language
   - Choose an AI model (GPT, Claude, or Gemini)
   - Paste your code or load an example
   - Click "✨ Generate Docstrings"
   - Copy the documented code!

## 📖 Example

**Input (Python):**
```python
def calculate_pi(iterations, param1, param2):
    result = 1.0
    for i in range(1, iterations+1):
        j = i * param1 - param2
        result -= (1/j)
        j = i * param1 + param2
        result += (1/j)
    return result
```

**Output:**
```python
def calculate_pi(iterations, param1, param2):
    """
    Calculate an approximation of pi using the Leibniz formula.
    
    Args:
        iterations (int): Number of iterations to perform in the calculation.
                         Higher values increase accuracy but take longer.
        param1 (int): First parameter for the calculation formula (typically 4).
        param2 (int): Second parameter for the calculation formula (typically 1).
    
    Returns:
        float: Approximation of pi divided by 4. Multiply by 4 to get pi.
    
    Note:
        This uses the Leibniz formula: π/4 = 1 - 1/3 + 1/5 - 1/7 + ...
        Convergence is slow; many iterations needed for good accuracy.
    """
    result = 1.0
    for i in range(1, iterations+1):
        # Calculate denominator for negative term
        j = i * param1 - param2
        result -= (1/j)
        # Calculate denominator for positive term
        j = i * param1 + param2
        result += (1/j)
    return result
```

## 🔑 Getting API Keys

### OpenAI API Key
1. Visit [platform.openai.com](https://platform.openai.com)
2. Sign up or log in
3. Go to API Keys section
4. Create a new API key

### Anthropic API Key
1. Visit [console.anthropic.com](https://console.anthropic.com)
2. Sign up or log in
3. Go to API Keys
4. Generate a new key

### Google API Key
1. Visit [Google AI Studio](https://makersuite.google.com/app/apikey)
2. Sign in with Google account
3. Create an API key

## 📁 Project Structure

```
ai-docstring-generator/
│
├── docstring_generator.py   # Main application file
├── requirements.txt          # Python dependencies
├── README.md                # Project documentation
```

## 🎨 Customization

You can customize the documentation style by modifying the `system_prompt_for_docstring()` function in `docstring_generator.py`.

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🐛 Troubleshooting

### Common Issues

**Issue: `TypeError: Client.__init__() got an unexpected keyword argument 'proxies'`**
- **Solution**: Update packages: `pip install --upgrade anthropic httpx`

**Issue: API key not found**
- **Solution**: Ensure your `.env` file is in the project root and contains valid API keys

**Issue: Model not responding**
- **Solution**: Check your API key is valid and you have available credits/quota

**Issue: Port 7860 already in use**
- **Solution**: Change the port in the `ui.launch()` call: `server_port=7861`

## 🔮 Future Enhancements

- [ ] Support for more AI models (Llama, Mistral, etc.)
- [ ] Batch processing for multiple files
- [ ] Support for more programming languages
- [ ] Custom documentation style templates
- [ ] Integration with IDEs (VS Code, PyCharm)
- [ ] API endpoint for programmatic access

## 📧 Contact

For questions or suggestions, please open an issue on GitHub.
Or mail me at udayslathia16@gmail.com

## 🙏 Acknowledgments

- OpenAI for GPT models
- Anthropic for Claude models
- Google for Gemini models
- Gradio for the amazing UI framework

---

**Made with ❤️ for developers who value good documentation**

---

## ⭐ Star History

If you find this project useful, please consider giving it a star!

[![Star History Chart](https://api.star-history.com/svg?repos=udayslathia16/ai-docstring-generator&type=Date)](https://star-history.com/#udayslathia16/ai-docstring-generator&Date)