// Imports
#import "@preview/brilliant-cv:4.0.1": (
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
    [Built and scaled a 6-person AI engineering team from the ground up — establishing engineering standards, sprint cadences, and delivery operating model; structured technical training enabled all 6 engineers to independently operate platform components with 80% more efficient workflows],
    [Architected and deployed a production-grade AI platform for Intelligent Document Processing (IDP) using Strands Agents SDK and Amazon Bedrock AgentCore — end-to-end model serving, REST API layer, and CI/CD deployment pipelines — reducing after-contact work by 25%],
    [Designed and standardized an AI agent platform using the Model Context Protocol (MCP), enabling reusable API integrations across internal systems and standardizing agentic workflow orchestration company-wide],
    [Engineered a scalable distributed datalakehouse (AWS S3, Glue, Lake Formation, Firehose, DuckDB, Iceberg) with automated quality monitoring and full observability — the foundational data platform supporting analytics, ML training, and product data access across the organization],
    [Established an AI governance framework aligned with EU AI Act — encompassing model documentation, audit trails, explainability pipelines, and continuous bias monitoring for production decisioning systems],
    [Implemented Claude Code across the engineering team, driving a 40% increase in software development productivity],
  ),
  tags: ("Amazon Bedrock", "AWS", "Claude", "Datalakehouse", "EU AI Act", "GenAI", "LLM", "MCP", "Model Governance", "Python", "Strands Agents"),
)

#cv-entry(
  title: [Data Scientist Consultant],
  society: [Allgeier IT GmbH],
  date: [Dec 2022 -- May 2023],
  location: [Berlin, Germany],
  description: list(
    [Developed a data strategy and roadmap for a client's customer service department, identifying key business requirements and aligning data capabilities to operational goals],
    [Designed a cloud-based end-to-end data management framework covering ingestion, transformation, and consumption layers for scalable data democratization],
  ),
  tags: ("Cloud Architecture", "Consulting", "Data Strategy", "Python"),
)

#cv-entry(
  title: [Lead Data Scientist],
  society: [Deutsche Kreditbank AG (DKB)],
  date: [Jul 2022 -- Nov 2022],
  location: [Berlin, Germany],
  description: list(
    [Led and mentored a team of data scientists at one of Germany's largest digital retail banks, establishing standardized model development workflows, code review standards, and a regulated-deployment checklist for production ML systems in a banking environment],
    [Developed the data science strategy and product roadmap for DKB's core banking AI initiatives, aligning ML capability with BaFin-regulated risk and compliance constraints],
  ),
  tags: ("BaFin", "Banking", "Data Science Strategy", "Data Science Workflow", "Python", "R", "Regulated ML", "Team Leadership"),
)

#cv-entry-start(
  society: [Europace AG],
  location: [Berlin, Germany],
)

#cv-entry-continued(
  title: [Data Scientist | Team Lead Central Data Team],
  date: [Jan 2021 -- Jul 2022],
  description: list(
    [Led Europace's data strategy transformation, driving company-wide adoption of data-informed decision-making across all business units],
    [Architected and extended a central data lake with a modular service landscape, enabling self-serve analytics across all Europace stakeholder groups],
    [Developed and deployed ML-based anomaly detection and time series forecasting pipelines, automating data validation and enabling forward-looking capacity planning for executive reporting],
  ),
  tags: ("Anomaly Detection", "AWS", "Datalake", "ML", "Python", "Team Leadership", "Time Series"),
)

#cv-entry-continued(
  title: [Data Scientist | Product Owner Central Data Team],
  date: [Jun 2020 -- Jan 2021],
  description: list(
    [Designed the cloud-based data framework (ingestion → transformation → consumption) for the loans business and built KPI dashboards across teams, establishing the foundation for data-driven decision-making at Europace],
  ),
  tags: ("AWS", "Datalake", "ETL", "KPI Design", "Product Deployment", "Python"),
)

#cv-entry-continued(
  title: [Data Analyst Loans Business],
  date: [Aug 2016 -- Jun 2020],
  description: list(
    [Advised partner institutions on technology innovation and data capability; led the Europace data-drivenness initiative enabling data-informed decision-making across the lending ecosystem],
  ),
  tags: ("AWS", "Business Analytics", "Data Analysis", "Python", "R"),
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
  tags: ("Campaign M", "Financial Markets", "Forecasting", "Institutional Asset Management", "Quantitative Analysis"),
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
  tags: ("Asset Allocation", "ETF", "Financial Services", "Investment", "Retail Banking"),
)

#cv-entry(
  title: [Project Management Trainee],
  society: [Alstom Power],
  date: [Dec 2013 -- Mar 2014],
  location: [Zurich, Switzerland],
  description: list(
    [Supported control and budgeting of the full project lifecycle from construction to commissioning of EMEA power plants, ensuring budget compliance across 4 projects],
    [Created and presented financial forecasts, construction reviews, cost calculation executions, and information database updates, ensuring clarity of information across stakeholders],
  ),
  tags: ("Budgeting", "Controlling", "Financial Forecasting", "Project Management"),
)
