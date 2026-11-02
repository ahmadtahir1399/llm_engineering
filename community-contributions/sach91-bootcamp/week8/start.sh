#!/bin/bash

# KnowledgeHub Startup Script

echo "🧠 Starting KnowledgeHub..."
echo ""

# Check if Ollama is running
if ! pgrep -x "ollama" > /dev/null; then
    echo "⚠️  Ollama is not running. Starting Ollama..."
    ollama serve &
    sleep 3
fi

# Check if llama3.2 model exists
if ! ollama list | grep -q "llama3.2"; then
    echo "📥 Llama 3.2 model not found. Pulling model..."
    echo "This may take a few minutes on first run..."
    ollama pull llama3.2
fi

echo "✅ Ollama is ready"
echo ""

# Check Python dependencies
echo "🔍 Checking dependencies..."
if ! python -c "import gradio" 2>/dev/null; then
    echo "📦 Installing dependencies..."
    pip install -r requirements.txt
fi

echo "✅ Dependencies ready"
echo ""

# Launch the application
echo "🚀 Launching KnowledgeHub..."
echo "The application will open in your browser at http://127.0.0.1:7860"
echo ""
echo "Press Ctrl+C to stop the application"
echo ""

python app.py
