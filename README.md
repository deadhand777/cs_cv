# CV - Chris Schulz

**Head of Data & AI | GenAI & LLM Platform Builder | Engineering Leader**

## Generate the CV

The CV is built with [brilliant-CV](https://github.com/yunanwg/brilliant-CV) (Typst). All content lives in `cv/profile_en/`.

```bash
cd cv && typst compile cv.typ
```

Output: `cv/cv.pdf` (A4, 2 pages).

## Project Structure

```
cv/                        # Typst CV pipeline (active)
  cv.typ                   # entry point
  profile_en/              # content: professional.typ, skills.typ, education.typ, metadata.toml
  cv.pdf                   # compiled output
man/                       # assets (profile photo, preview image)
Chris_Schulz_CV.yaml       # RenderCV YAML (secondary pipeline)
```

## Specializations

- **Generative AI & LLMs**: RAG, Agents, MCP, Fine-tuning (LoRA/RLHF), LangChain, Strands Agents
- **ML & Data Engineering**: PyTorch, Python, AWS, Apache Iceberg, DuckDB, MLOps
- **Leadership**: AI roadmap, team building, EU AI Act compliance, data governance
