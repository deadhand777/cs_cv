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
    [Built and scaled a 6-person AI engineering team from scratch, setting engineering standards, sprint cadences, and the delivery operating model; structured technical training let all 6 engineers operate platform components independently with 80% more efficient workflows],
    [Architected and deployed a production-grade AI platform for Intelligent Document Processing (IDP) on Strands Agents SDK and Amazon Bedrock AgentCore (end-to-end model serving, REST API layer, CI/CD deployment pipelines) that cut after-contact work by 25%],
    [Designed and standardized an AI agent platform on the Model Context Protocol (MCP), which gave internal systems reusable API integrations and the company one way to orchestrate agentic workflows],
    [Engineered a scalable distributed datalakehouse (AWS S3, Glue, Lake Formation, Firehose, DuckDB, Iceberg) with automated quality monitoring and full observability; analytics, ML training, and product data access across the organization all run on it],
    [Established an AI governance framework for the EU AI Act: model documentation, audit trails, explainability pipelines, and continuous bias monitoring for production decisioning systems],
    [Rolled out Claude Code across the engineering team, which lifted software development productivity by 40%],
    [Shipped an ISMS and compliance agent (Bedrock AgentCore, Strands Agents, Claude Haiku 4.5, eu-central-1 for EU data residency) that answers information security and regulatory questions from the internal ISMS knowledge base with cited sources, on a vectorless manifest-then-fetch retrieval pattern],
    [Shipped a self-service data analyst agent (AgentCore runtime, Strands Agents, CDK) that turns natural-language questions into governed insights over the internal datalakehouse, which ended the analyst bottleneck for business stakeholders],
  ),
  tags: ("Amazon Bedrock", "AWS", "Claude", "Datalakehouse", "EU AI Act", "GenAI", "LLM", "MCP", "Model Governance", "Python", "Strands Agents", "TypeScript", "AI Chatbot", "Information Security", "Compliance", "Regulatory AI", "NLP", "LLM Applications", "Data Analytics", "Business Intelligence"),
)

#cv-entry(
  title: [Data Scientist Consultant],
  society: [Allgeier IT GmbH],
  date: [Dec 2022 -- May 2023],
  location: [Berlin, Germany],
  description: list(
    [Developed a data strategy and roadmap for a client's customer service department: named the main business requirements and matched data capabilities to their operational goals],
    [Designed a cloud-based data management framework that spans the ingestion, transformation, and consumption layers for scalable data democratization],
  ),
  tags: ("Cloud Architecture", "Consulting", "Data Strategy", "Python", "Business Intelligence"),
)

#cv-entry(
  title: [Lead Data Scientist],
  society: [Deutsche Kreditbank AG (DKB)],
  date: [Jul 2022 -- Nov 2022],
  location: [Berlin, Germany],
  description: list(
    [Led and mentored a team of data scientists at one of Germany's largest digital retail banks; set standardized model development workflows, code review standards, and a regulated-deployment checklist for production ML systems in banking],
    [Developed the data science strategy and product roadmap for DKB's core banking AI initiatives within BaFin-regulated risk and compliance constraints],
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
    [Led Europace's data strategy transformation and brought data-informed decision-making into every business unit],
    [Architected and extended a central data lake with modular services, which gave every Europace stakeholder group self-serve analytics],
    [Developed and deployed ML-based anomaly detection and time series forecasting pipelines that automate data validation and feed forward-looking capacity planning into executive reporting],
  ),
  tags: ("Anomaly Detection", "AWS", "Datalake", "ML", "Python", "Team Leadership", "Time Series", "TypeScript", "Business Intelligence"),
)

#cv-entry-continued(
  title: [Data Scientist | Product Owner Central Data Team],
  date: [Jun 2020 -- Jan 2021],
  description: list(
    [Designed the cloud-based data framework (ingestion → transformation → consumption) for the loans business and built KPI dashboards across teams, which started data-driven decision-making at Europace],
  ),
  tags: ("AWS", "Datalake", "ETL", "KPI Design", "ML", "Product Deployment", "Python", "TypeScript", "Business Intelligence"),
)

#cv-entry-continued(
  title: [Data Analyst Loans Business],
  date: [Aug 2016 -- Jun 2020],
  description: list(
    [Advised partner institutions on technology innovation and data capability; led the Europace data-drivenness initiative that brought data-informed decision-making to the lending ecosystem],
  ),
  tags: ("AWS", "Business Analytics", "Data Analysis", "ML", "Python", "R", "Business Intelligence"),
)

#cv-entry(
  title: [Quantitative Analyst],
  society: [Cerulli Associates],
  date: [Oct 2015 -- Aug 2016],
  location: [London, UK],
  description: list(
    [Provisioned data insights by sourcing, validating and analyzing data],
    [Executed model calibration, market sizing and forecasting of various European markets and asset classes],
    [Conducted research and captured distribution trends in institutional asset management along the institutional investment chain to calibrate client's market penetration strategies],
  ),
  tags: ("Campaign Management", "Financial Markets", "Forecasting", "Institutional Asset Management", "Quantitative Analysis", "Business Intelligence"),
)

#cv-entry(
  title: [Business Analyst],
  society: [Lloyds Banking Group],
  date: [Mar 2014 -- Oct 2015],
  location: [Berlin, Germany],
  description: list(
    [Designed asset allocation framework for an investment project targeting mass affluent clientele],
    [Developed a portfolio of investment vehicles covering the whole customer spectrum],
    [Created a selection algorithm utilising customer preferences, assessing qualitative and quantitative ETF characteristics to provide tailored investment advice],
  ),
  tags: ("Asset Allocation", "Deposit Insurance", "ETF", "Financial Services", "Investment", "Project Management", "Retail Banking", "Business Intelligence"),
)

#cv-entry(
  title: [Project Management Trainee],
  society: [Alstom Power],
  date: [Dec 2013 -- Mar 2014],
  location: [Zurich, Switzerland],
  description: list(
    [Supported control and budgeting of the full project lifecycle from construction to commissioning of EMEA power plants, holding 4 projects to budget],
    [Created and presented financial forecasts, construction reviews, cost calculations, and information database updates that kept stakeholders clear on the numbers],
  ),
  tags: ("Budgeting", "Controlling", "Financial Forecasting", "Project Management"),
)
