# 🧠 KnowledgeHub - Personal Knowledge Management & Research Assistant

An elegant, fully local AI-powered knowledge management system that helps you organize, search, and understand your documents using state-of-the-art LLM technology.

## ✨ Features

### 🎯 Core Capabilities
- **📤 Document Ingestion**: Upload PDF, DOCX, TXT, MD, and HTML files
- **❓ Intelligent Q&A**: Ask questions and get answers from your documents using RAG
- **📝 Smart Summarization**: Generate concise summaries with key points
- **🔗 Connection Discovery**: Find relationships between documents
- **💾 Multi-format Export**: Export as Markdown, HTML, or plain text
- **📊 Statistics Dashboard**: Track your knowledge base growth

### 🔒 Privacy-First
- **100% Local Processing**: All data stays on your machine
- **No Cloud Dependencies**: Uses Ollama for local LLM inference
- **Open Source**: Full transparency and control

### ⚡ Technology Stack
- **LLM**: Ollama with Llama 3.2 (3B) or Llama 3.1 (8B)
- **Embeddings**: sentence-transformers (all-MiniLM-L6-v2)
- **Vector Database**: ChromaDB
- **UI**: Gradio
- **Document Processing**: pypdf, python-docx, beautifulsoup4

## 🚀 Quick Start

### Prerequisites

1. **Python 3.8+** installed
2. **Ollama** installed and running

#### Installing Ollama

**macOS/Linux:**
```bash
curl -fsSL https://ollama.com/install.sh | sh
```

**Windows:**
Download from [ollama.com/download](https://ollama.com/download)

### Installation

1. **Clone or download this repository**

2. **Install Python dependencies:**
```bash
pip install -r requirements.txt
```

3. **Pull Llama model using Ollama:**
```bash
# For faster inference (recommended for most users)
ollama pull llama3.2

# OR for better quality (requires more RAM)
ollama pull llama3.1
```

4. **Start Ollama server** (if not already running):
```bash
ollama serve
```

5. **Launch KnowledgeHub:**
```bash
python app.py
```

The application will open in your browser at `http://127.0.0.1:7860`

## 📖 Usage Guide

### 1. Upload Documents
- Go to the "Upload Documents" tab
- Select a file (PDF, DOCX, TXT, MD, or HTML)
- Click "Upload & Process"
- The document will be chunked and stored in your local vector database

### 2. Ask Questions
- Go to the "Ask Questions" tab
- Type your question in natural language
- Adjust the number of sources to retrieve (default: 5)
- Click "Ask" to get an AI-generated answer with sources

### 3. Summarize Documents
- Go to the "Summarize" tab
- Select a document from the dropdown
- Click "Generate Summary"
- Get a concise summary with key points

### 4. Find Connections
- Go to the "Find Connections" tab
- Select a document to analyze
- Adjust how many related documents to find
- See documents that are semantically similar

### 5. Export Knowledge
- Go to the "Export" tab
- Choose your format (Markdown, HTML, or Text)
- Click "Export" to download your knowledge base

### 6. View Statistics
- Go to the "Statistics" tab
- See overview of your knowledge base
- Track total documents, chunks, and characters

## 🏗️ Architecture

```
KnowledgeHub/
├── agents/              # Specialized AI agents
│   ├── base_agent.py           # Base class for all agents
│   ├── ingestion_agent.py      # Document processing
│   ├── question_agent.py       # RAG-based Q&A
│   ├── summary_agent.py        # Summarization
│   ├── connection_agent.py     # Finding relationships
│   └── export_agent.py         # Exporting data
├── models/              # Data models
│   ├── document.py             # Document structures
│   └── knowledge_graph.py      # Graph structures
├── utils/               # Utilities
│   ├── ollama_client.py        # Ollama API wrapper
│   ├── embeddings.py           # Embedding generation
│   └── document_parser.py      # File parsing
├── vectorstore/         # ChromaDB storage (auto-created)
├── temp_uploads/        # Temporary file storage (auto-created)
├── app.py              # Main Gradio application
└── requirements.txt    # Python dependencies
```

## 🎯 Multi-Agent Framework

KnowledgeHub uses a sophisticated multi-agent architecture:

1. **Ingestion Agent**: Parses documents, creates chunks, generates embeddings
2. **Question Agent**: Retrieves relevant context and answers questions
3. **Summary Agent**: Creates concise summaries and extracts key points
4. **Connection Agent**: Finds semantic relationships between documents
5. **Export Agent**: Formats and exports knowledge in multiple formats

Each agent is independent, reusable, and focused on a specific task, following best practices in agentic AI development.

## ⚙️ Configuration

### Changing Models

Edit `app.py` to use different models:

```python
# For Llama 3.1 8B (better quality, more RAM)
self.llm_client = OllamaClient(model="llama3.1")

# For Llama 3.2 3B (faster, less RAM)
self.llm_client = OllamaClient(model="llama3.2")
```

### Adjusting Chunk Size

Edit `agents/ingestion_agent.py`:

```python
self.parser = DocumentParser(
    chunk_size=1000,      # Characters per chunk
    chunk_overlap=200     # Overlap between chunks
)
```

### Changing Embedding Model

Edit `app.py`:

```python
self.embedding_model = EmbeddingModel(
    model_name="sentence-transformers/all-MiniLM-L6-v2"
)
```

## 🔧 Troubleshooting

### "Cannot connect to Ollama"
- Ensure Ollama is installed: `ollama --version`
- Start the Ollama service: `ollama serve`
- Verify the model is pulled: `ollama list`

### "Module not found" errors
- Ensure all dependencies are installed: `pip install -r requirements.txt`
- Try upgrading pip: `pip install --upgrade pip`

### "Out of memory" errors
- Use Llama 3.2 (3B) instead of Llama 3.1 (8B)
- Reduce chunk_size in document parser
- Process fewer documents at once

### Slow response times
- Ensure you're using a CUDA-enabled GPU (if available)
- Reduce the number of retrieved chunks (top_k parameter)
- Use a smaller model (llama3.2)

## 🎓 Learning Resources

This project demonstrates key concepts in LLM engineering:

- **RAG (Retrieval Augmented Generation)**: Combining retrieval with generation
- **Vector Databases**: Using ChromaDB for semantic search
- **Multi-Agent Systems**: Specialized agents working together
- **Embeddings**: Semantic representation of text
- **Local LLM Deployment**: Using Ollama for privacy-focused AI

## 📊 Performance

**Hardware Requirements:**
- Minimum: 8GB RAM, CPU
- Recommended: 16GB RAM, GPU (NVIDIA with CUDA)
- Optimal: 32GB RAM, GPU (RTX 3060 or better)

**Processing Speed** (Llama 3.2 on M1 Mac):
- Document ingestion: ~2-5 seconds per page
- Question answering: ~5-15 seconds
- Summarization: ~10-20 seconds

## 🤝 Contributing

This is a learning project showcasing LLM engineering principles. Feel free to:
- Experiment with different models
- Add new agents for specialized tasks
- Improve the UI
- Optimize performance

## 📄 License

This project is open source and available for educational purposes.

## 🙏 Acknowledgments

Built with:
- [Ollama](https://ollama.com/) - Local LLM runtime
- [Gradio](https://gradio.app/) - UI framework
- [ChromaDB](https://www.trychroma.com/) - Vector database
- [Sentence Transformers](https://www.sbert.net/) - Embeddings
- [Llama](https://ai.meta.com/llama/) - Meta's open source LLMs

## 🎯 Next Steps

Potential enhancements:
1. Add support for images and diagrams
2. Implement multi-document chat history
3. Build a visual knowledge graph
4. Add collaborative features
5. Create mobile app interface
6. Implement advanced filters and search
7. Add citation tracking
8. Create automated study guides

---

**Made with ❤️ for the LLM Engineering Community**
