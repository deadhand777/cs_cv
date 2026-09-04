// Imports
#import "@preview/brilliant-cv:4.1.0": cv-entry, cv-section


#cv-section("Key Projects")

#cv-entry(
  title: [ISMS & Compliance Agent],
  society: [Dr Klein Ratenkredit GmbH],
  date: [2026 -- Present],
  location: [Production],
  description: list(
    [Containerised agent on Amazon Bedrock AgentCore with Strands Agents and Claude Haiku 4.5 (cross-region inference in eu-central-1 for EU data residency), answering information security and regulatory questions with cited sources],
    [Vectorless manifest-then-fetch retrieval over the central ISMS knowledge base — no embedding pipeline to maintain — plus AgentCore Memory for session continuity, deployed as a single CDK stack],
  ),
  tags: ("AWS", "Bedrock", "AgentCore", "Strands Agents", "Claude Haiku 4.5", "ISMS", "Compliance", "CDK"),
)

#cv-entry(
  title: [Data Analyst AI Agent],
  society: [Dr Klein Ratenkredit GmbH],
  date: [2026 -- Present],
  location: [Production],
  description: list(
    [Autonomous analyst agent on Bedrock AgentCore (Strands Agents, Python 3.13, CDK) turning plain-language questions into data-grounded insights over the internal DataHub data universe],
    [Dashboard frontend for self-service access, removing the analyst bottleneck so teams decide on data instead of waiting for scarce analysis capacity],
  ),
  tags: ("AWS", "Bedrock", "AgentCore", "Strands Agents", "Data Analytics", "Self-Service BI", "DataHub", "CDK"),
)

#cv-entry(
  title: [Agentic Contact Center],
  society: [Open Source],
  date: [2026],
  location: [Proof of Concept],
  description: list(
    [Supervisor agent on Bedrock AgentCore (Nova 2 Lite, Strands Agents) behind Amazon Connect chat, serving cited product answers from an S3 Vectors knowledge base, authenticated balance lookups via an MCP gateway, and deterministic escalation to a human queue],
    [Built for regulated German banking (BaFin/DORA, eu-central-1): server-side identity binding, Bedrock Guardrail for PII anonymisation and investment-advice denial, and a deterministic eval harness scoring 14/14 on a golden question set],
  ),
  tags: ("AWS", "Bedrock", "AgentCore", "Amazon Connect", "Lex V2", "S3 Vectors", "Guardrails", "MCP", "CDK"),
)

#cv-entry(
  title: [Intelligent Document Processing Platform],
  society: [Dr Klein Ratenkredit GmbH],
  date: [2023 -- Present],
  location: [Production],
  description: list(
    [End-to-end GenAI platform using Strands Agents SDK and Amazon Bedrock AgentCore for automated document classification, extraction, and validation],
    [REST API layer with CI/CD pipelines, reducing after-contact work by 25% across customer service operations],
  ),
  tags: ("AWS", "GenAI", "Strands Agents", "Bedrock", "AgentCore", "MCP", "Production", "CDK"),
)

#cv-entry(
  title: [MCP-Based Agent Platform],
  society: [Dr Klein Ratenkredit GmbH],
  date: [2024 -- Present],
  location: [Production],
  description: list(
    [Designed and standardized an AI agent platform using the Model Context Protocol (MCP)],
    [Enabled reusable API integrations across internal systems, standardizing agentic workflow orchestration company-wide],
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
    [Foundational infrastructure supporting analytics, ML training, and product data access across the organization],
  ),
  tags: ("AWS", "Datalake", "S3", "Glue", "Lake Formation", "DuckDB", "CDK"),
)

#cv-entry(
  title: [Central Datalake],
  society: [Europace AG],
  date: [2020 -- 2021],
  location: [Production],
  description: list(
    [Architected a scalable central datalake on AWS S3, Glue, and Athena ingesting proprietary mortgage and loans data alongside external market data sources],
    [Enabled company-wide self-service analytics, operative and strategic KPIs, ML training, and product data access — eliminating siloed data access and accelerating time-to-insight across all stakeholder groups],
  ),
  tags: ("AWS", "Datalake", "S3", "Glue", "Athena", "CDK"),
)
