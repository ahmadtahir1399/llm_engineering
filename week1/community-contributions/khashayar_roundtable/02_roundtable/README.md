# 🧠 Three-Way AI Conversation (Trialogue)
### *A Multi-Agent Reasoning Experiment using GPT-4o-mini, Claude 3 Haiku, and Gemini 2.0 Flash*

---

## 📘 Overview
This notebook demonstrates a **multi-agent conversation** among three distinct AI personas—**Athena**, **Blaze**, and **Cypher**—each powered by a different large language model provider via the [LiteLLM](https://docs.litellm.ai/) interface.

The experiment explores how diverse reasoning styles and model architectures interact when collaboratively solving a creative or analytical problem. Each agent contributes from a different cognitive angle:

- 🦉 **Athena** (*GPT-4o-mini*, OpenAI): Systems thinker — maps assumptions, constraints, and risks.  
- 🔥 **Blaze** (*Claude 3 Haiku*, Anthropic): Pragmatic engineer — proposes concrete steps and next actions.  
- 🧩 **Cypher** (*Gemini 2.0 Flash*, Google): Critical evaluator — challenges ideas and surfaces uncertainties.

---

## 🎯 Objective
The goal of this mini-assignment is to:
1. Build a **cross-model dialogue pipeline** using LiteLLM.  
2. Observe **emergent collaboration** dynamics among specialized roles.  
3. Practice **structured prompt design**, role conditioning, and conversational state management.  

---

## ⚙️ Setup

### 1. Install dependencies
```bash
pip install litellm python-dotenv ipython
```

### 2. Add your API keys
Create a .env file in the project root:
```bash
OPENAI_API_KEY=sk-...
ANTHROPIC_API_KEY=sk-ant-...
GEMINI_API_KEY=AIza...
```
`LiteLLM` automatically detects these environment variables.

## 🧩 Project Structure
```
02_roundtable/
├─ README.md
├─ Trialogue.ipynb
```

## 💬 Conversation Logic

Each agent responds in sequence:

**Athena** analyzes the full conversation and identifies assumptions, constraints, and risks.

**Blaze** follows up with actionable strategies, practical tests, and next steps.

**Cypher** critiques and probes the reasoning, identifying gaps and suggesting validations.

This round repeats several times, maintaining the shared context through a growing transcript list.

## 🧠 Example Discussion (Excerpt)
```txt
Blaze: Hello Athena, how are you today?

Cypher: Hi Athena, I was wondering if you could help me with a creative project I'm working on.

Athena: 1. Assumptions:
- Cypher is seeking guidance in creativity.
- The project has a defined objective or target audience.
Constraints:
- Time limitations for completion.
Risks:
- Misalignment with the audience’s interests.
Question: What is the specific nature of your creative project?

Each new round deepens the reasoning chain as the agents debate validation strategies, bias mitigation, and feedback diversity.
```

## 🧠 Insights Gained
- Models show **complementary reasoning styles** even with concise prompts.
- The system can emulate **collaborative problem-solving** between specialized AI agents.
- Role conditioning effectively produces distinct “personalities” and dialogue coherence.

## 🚀 Future Extensions
- Add a **fourth agent** (e.g., “Muse” for ideation or “Sage” for summarization).
- Implement **async parallel calls** for faster multi-agent turns.
- Store transcripts for fine-tuning or multi-agent evaluation experiments.

## 🏁 Author
Khashayar Bayati, Ph.D.

GitHub: github.com/Khashayarbayati1
