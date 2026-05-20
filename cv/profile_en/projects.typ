// Imports
#import "@preview/brilliant-cv:4.0.1": cv-entry, cv-section


#cv-section("Key Projects")

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
