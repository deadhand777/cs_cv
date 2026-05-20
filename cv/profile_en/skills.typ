// Imports
#import "@preview/brilliant-cv:4.0.1": (
  cv-section, cv-skill, cv-skill-tag, h-bar,
)


#cv-section("Skills")

#cv-skill(
  type: [Generative AI & LLMs],
  info: [
    GenAI Patterns (RAG, Agents, Chain-of-Thought, ReAct, DSPy)
    #h-bar() LLM Frameworks (Agno, CrewAI, HuggingFace, LangChain, LangGraph, LlamaIndex, Strands Agents)
    #h-bar() Models & APIs (Anthropic, Amazon Bedrock AgentCore, HuggingFace, Ollama)
    #h-bar() LLM Ops (Deployment, Monitoring)
    #h-bar() Fine-tuning (PEFT, LoRA, QLoRA, RLHF, DPO, Unsloth)
    #h-bar() Vector Databases (Amazon S3 Vectors, ChromaDB, FalkorDB, Qdrant)
    #h-bar() Model Context Protocol (MCP Server Implementation, Client Integration)
  ],
)

#cv-skill(
  type: [ML & Data Science],
  info: [
    Languages (Python, R, SQL, TypeScript)
    #h-bar() Classical ML (Regression, Classification, Clustering, XGBoost, LightGBM, Scikit-learn)
    #h-bar() Deep Learning (PyTorch, TensorFlow, Neural Networks, Transformers)
    #h-bar() Time Series (Forecasting, Classification, Anomaly Detection, Nixtla)
    #h-bar() Data Visualization (Plotly, Streamlit, Shiny)
  ],
)

#cv-skill(
  type: [Platform & Data Eng.],
  info: [
    Platform Engineering (Model Serving, API Design, Pipeline Orchestration, Standardized Deployment)
    #h-bar() AWS (S3, Glue, Athena, DynamoDB, Firehose, ECS, Lambda, EventBridge, SageMaker)
    #h-bar() Data Processing (Arrow, DuckDB, Apache Iceberg, Apache Spark, Pandas, Polars)
    #h-bar() Databases (PostgreSQL, MongoDB, ElasticSearch, Redshift)
    #h-bar() DevOps & Tools (Docker, Git, CI/CD via GitHub Actions, AWS CDK, Claude Code)
  ],
)

#cv-skill(
  type: [Leadership & Strategy],
  info: [
    Team Building (AI Engineers, Data Engineers, ML Engineers, Hiring, Mentoring, Agile/Scrum)
    #h-bar() Operating Model (Delivery Excellence, Engineering Standards, Cross-market Rollout)
    #h-bar() Strategy (AI Roadmap, Data Strategy, Platform Vision, Stakeholder Management)
  ],
)

#cv-skill(
  type: [Regulation],
  info: [
    Regulation & Compliance (Data Protection, Data Privacy, Data Governance, Model Governance)
    #h-bar() EU AI Act Compliance
    #h-bar() Model Governance & Auditability
    #h-bar() GDPR-Compliant ML Pipelines
    #h-bar() Explainable AI (XAI)
    #h-bar() Continuous Bias Monitoring
    #h-bar() Data Quality Evaluation
  ],
)
