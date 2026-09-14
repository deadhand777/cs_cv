// Imports
#import "@preview/brilliant-cv:4.1.0": (
  cv-entry, cv-entry-continued, cv-entry-start, cv-section,
)


#cv-section("Professional Experience")

#cv-entry-start(
  society: [Dr Klein Ratenkredit GmbH],
  location: [Lübeck, Germany],
)

#cv-entry-continued(
  title: [Head of Data & AI],
  date: [May 2023 -- Present],
  description: list(
    [Built the data and AI strategy around the company's business goals and rolled it into day-to-day decision-making.],
    [Built a production AI platform for Intelligent Document Processing (IDP) on Strands Agents SDK and Amazon Bedrock AgentCore, with model serving, a REST API layer, and CI/CD pipelines; it cut after-contact work by 25%.],
    [Designed a distributed datalakehouse (AWS S3, Glue, Lake Formation, Firehose, DuckDB, Iceberg) with automated quality monitoring and observability; analytics, ML training, and product data access across the company all run on it.],
    [Established an AI governance framework for the EU AI Act: model documentation, audit trails, explainability pipelines, and continuous bias monitoring for production decisioning systems.],
    [Rolled out Claude Code across the engineering team, which raised software development productivity by 40%.],
    [Shipped an ISMS and compliance agent (Bedrock AgentCore, Strands Agents, Claude Haiku 4.5, eu-central-1 for EU data residency). It answers information security and regulatory questions from the internal ISMS knowledge base with cited sources, using a vectorless manifest-then-fetch retrieval pattern.],
    [Delivered a self-service data analyst agent (AgentCore runtime, Strands Agents, CDK) that answers natural-language questions over the internal datalakehouse under existing data governance, so business stakeholders no longer queue for an analyst.],
    [Hired and led a 6-person AI engineering team, and set its engineering standards, sprint cadence, and delivery model; after structured technical training all 6 engineers run platform components on their own, with 80% more efficient workflows.],
  ),
  tags: ("Amazon Bedrock", "AWS", "Claude", "Datalakehouse", "EU AI Act", "GenAI", "LLM", "MCP", "Model Governance", "Python", "Strands Agents", "TypeScript", "AI Chatbot", "Information Security", "Compliance", "Regulatory AI", "NLP", "LLM Applications", "Data Analytics", "Business Intelligence"),
)

#cv-entry(
  title: [Contractor Data Scientist Consultant],
  society: [Allgeier IT GmbH],
  date: [Dec 2022 -- May 2023],
  location: [Berlin, Germany],
  description: list(
    [Defined the data strategy and roadmap for a client's customer service department, and matched data capabilities to their operational goals.],
    [Designed a cloud data management framework across the ingestion, transformation, and consumption layers, so teams across the client organization could serve themselves.],
  ),
  tags: ("Cloud Architecture", "Consulting", "Data Strategy", "Python", "Business Intelligence"),
)

#cv-entry(
  title: [Lead Data Scientist],
  society: [Deutsche Kreditbank AG (DKB)],
  date: [Jul 2022 -- Nov 2022],
  location: [Berlin, Germany],
  description: list(
    [Led and mentored a data science team at one of Germany's largest digital retail banks.],
    [Set the model development workflow, code review standards and deployment checklist for regulated production ML in banking.],
    [Developed the data science strategy and product roadmap for DKB's core banking AI initiatives within BaFin-regulated risk and compliance constraints.],
  ),
  tags: ("BaFin", "Banking", "Data Science Strategy", "Data Science Workflow", "Python", "R", "Regulated ML", "Team Leadership", "Business Intelligence"),
)

#cv-entry-start(
  society: [Europace AG],
  location: [Berlin, Germany],
)

#cv-entry-continued(
  title: [Data Scientist | Team Lead Central Data Team],
  date: [Jan 2021 -- Jul 2022],
  description: list(
    [Led Europace's data strategy transformation and drove adoption across every business unit.],
    [Extended the central data lake with modular services that gave every stakeholder group self-serve analytics.],
    [Built ML anomaly detection and time series forecasting pipelines that automate data validation and feed capacity planning into executive reporting.],
  ),
  tags: ("Anomaly Detection", "AWS", "Datalake", "ML", "Python", "Team Leadership", "Time Series", "TypeScript", "Business Intelligence"),
)

#cv-entry-continued(
  title: [Data Scientist | Product Owner Central Data Team],
  date: [Jun 2020 -- Jan 2021],
  description: list(
    [Designed the cloud data framework (ingestion, transformation, consumption) for the loans business.],
    [Built cross-team KPI dashboards that established data-driven decision-making at Europace.],
  ),
  tags: ("AWS", "Datalake", "ETL", "KPI Design", "ML", "Product Deployment", "Python", "TypeScript", "Business Intelligence"),
)

#cv-entry-continued(
  title: [Data Analyst Loans Business],
  date: [Aug 2016 -- Jun 2020],
  description: list(
    [Advised partner institutions on technology and data capability across the lending ecosystem.],
    [Led Europace's data-drivenness initiative with partner banks and brokers.],
  ),
  tags: ("AWS", "Business Analytics", "Data Analysis", "ML", "Python", "R", "Business Intelligence"),
)

#cv-entry(
  title: [Quantitative Analyst],
  society: [Cerulli Associates],
  date: [Oct 2015 -- Aug 2016],
  location: [London, UK],
  description: list(
    [Ran market sizing and forecasts across European markets and asset classes, and calibrated the underlying models.],
    [Sourced, validated, and analyzed data to produce client insights.],
    [Researched distribution trends in institutional asset management; clients used the findings to calibrate market penetration strategies.],
  ),
  tags: ("Campaign Management", "Financial Markets", "Forecasting", "Institutional Asset Management", "Quantitative Analysis", "Business Intelligence"),
)

#cv-entry(
  title: [Business Analyst],
  society: [Lloyds Banking Group],
  date: [Mar 2014 -- Oct 2015],
  location: [Berlin, Germany],
  description: list(
    [Created a selection algorithm weighing customer preferences against qualitative and quantitative ETF characteristics to generate tailored investment advice.],
    [Designed the asset allocation framework for an investment product targeting mass affluent clients.],
  ),
  tags: ("Asset Allocation", "Deposit Insurance", "ETF", "Financial Services", "Investment", "Project Management", "Retail Banking", "Business Intelligence"),
)

#cv-entry(
  title: [Project Management Trainee],
  society: [Alstom Power],
  date: [Dec 2013 -- Mar 2014],
  location: [Zurich, Switzerland],
  description: list(
    [Controlled the budgets of 4 EMEA power plant projects from construction to commissioning, and held all 4 to plan.],
    [Produced and presented financial forecasts, construction reviews, cost calculations, and database updates for project stakeholders.],
  ),
  tags: ("Budgeting", "Controlling", "Financial Forecasting", "Project Management"),
)
