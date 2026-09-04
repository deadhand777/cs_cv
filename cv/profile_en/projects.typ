// Imports
#import "@preview/brilliant-cv:4.1.0": cv-entry, cv-section


#cv-section("Key Projects")

#cv-entry(
  title: [ISMS & Compliance Agent],
  society: [Dr Klein Ratenkredit GmbH],
  date: [2026 -- Present],
  location: [Production],
  description: list(
    [Containerised agent on Amazon Bedrock AgentCore (Strands Agents, Claude Haiku 4.5 with cross-region inference in eu-central-1 for EU data residency) that answers information security and regulatory questions with cited sources],
    [Vectorless manifest-then-fetch retrieval over the central ISMS knowledge base, so there is no embedding pipeline to maintain, plus AgentCore Memory for session continuity in a single CDK stack],
  ),
  tags: ("AWS", "Bedrock", "AgentCore", "Strands Agents", "Claude Haiku 4.5", "ISMS", "Compliance", "CDK"),
)

#cv-entry(
  title: [Data Analyst AI Agent],
  society: [Dr Klein Ratenkredit GmbH],
  date: [2026 -- Present],
  location: [Production],
  description: list(
    [Autonomous analyst agent on Bedrock AgentCore (Strands Agents, Python 3.13, CDK) that answers plain-language questions with insights grounded in the internal DataHub data universe],
    [Dashboard frontend gives teams self-service access, so decisions no longer queue behind scarce analyst capacity],
  ),
  tags: ("AWS", "Bedrock", "AgentCore", "Strands Agents", "Data Analytics", "Self-Service BI", "DataHub", "CDK"),
)

#cv-entry(
  title: [Agentic Contact Center],
  society: [Open Source],
  date: [2026],
  location: [Proof of Concept],
  description: list(
    [Supervisor agent on Bedrock AgentCore (Nova 2 Lite, Strands Agents) behind Amazon Connect chat: cited product answers from an S3 Vectors knowledge base, authenticated balance lookups via an MCP gateway, and deterministic escalation to a human queue],
    [Built for regulated German banking (BaFin/DORA, eu-central-1) with server-side identity binding, a Bedrock Guardrail that anonymises PII and denies investment advice, and a deterministic eval harness that scores 14/14 on a golden question set],
  ),
  tags: ("AWS", "Bedrock", "AgentCore", "Amazon Connect", "Lex V2", "S3 Vectors", "Guardrails", "MCP", "CDK"),
)

#cv-entry(
  title: [Intelligent Document Processing Platform],
  society: [Dr Klein Ratenkredit GmbH],
  date: [2023 -- Present],
  location: [Production],
  description: list(
    [GenAI platform on Strands Agents SDK and Amazon Bedrock AgentCore that automates document classification, extraction, and validation end to end],
    [REST API layer with CI/CD pipelines that cut after-contact work by 25% across customer service operations],
  ),
  tags: ("AWS", "GenAI", "Strands Agents", "Bedrock", "AgentCore", "MCP", "Production", "CDK"),
)

#cv-entry(
  title: [MCP-Based Agent Platform],
  society: [Dr Klein Ratenkredit GmbH],
  date: [2024 -- Present],
  location: [Production],
  description: list(
    [Designed and standardized an AI agent platform on the Model Context Protocol (MCP)],
    [Reusable API integrations across internal systems, giving the company one way to orchestrate agentic workflows],
  ),
  tags: ("AWS", "MCP", "Agents", "Platform Engineering", "CDK"),
)

#cv-entry(
  title: [Distributed Datalakehouse],
  society: [Dr Klein Ratenkredit GmbH],
  date: [2023 -- Present],
  location: [Production],
  description: list(
    [Scalable data platform on AWS S3, Glue, DuckDB, and Lake Formation with automated quality monitoring and full observability],
    [Analytics, ML training, and product data access across the organization all run on this infrastructure],
  ),
  tags: ("AWS", "Datalake", "S3", "Glue", "Lake Formation", "DuckDB", "CDK"),
)

#cv-entry(
  title: [Central Datalake],
  society: [Europace AG],
  date: [2020 -- 2021],
  location: [Production],
  description: list(
    [Architected a scalable central datalake on AWS S3, Glue, and Athena that ingests proprietary mortgage and loans data alongside external market data sources],
    [Gave every stakeholder group self-service analytics, operative and strategic KPIs, ML training, and product data access, which ended siloed data and shortened time to insight],
  ),
  tags: ("AWS", "Datalake", "S3", "Glue", "Athena", "CDK"),
)
