# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What this repo is

A personal CV repository for Chris Schulz. It contains two parallel CV generation pipelines — an older R/vitae-based one and the current Python/RenderCV-based one — plus gitignored private variants.

## Generating the CV (Python/RenderCV — current approach)

Dependencies are managed with `uv`. The CV source of truth is `Chris_Schulz_CV.yaml`.

```bash
# Install dependencies
uv sync

# Render the CV (outputs to rendercv_output/)
uv run rendercv render Chris_Schulz_CV.yaml
```

The output directory `rendercv_output/` contains the generated PDF and supporting files.

The YAML schema is pinned to RenderCV v2.6:
```
# yaml-language-server: $schema=https://raw.githubusercontent.com/rendercv/rendercv/refs/tags/v2.6/schema.json
```

## Generating the CV (R/vitae — legacy approach)

The R pipeline uses `renv` for dependency management. Parquet files in `data/` are the data source for the Rmd templates.

```r
# Restore R environment
renv::restore()

# Rebuild parquet data files (run in local/local.R — gitignored)
# Then knit the CV
rmarkdown::render("cv_public/cv_public.Rmd")
```

`local/local.R` builds `data/experience.parquet`, `data/education.parquet`, and `data/skills.parquet` via `arrow::write_parquet()`. Edit content there, re-run it, then re-knit the Rmd.

## Architecture

- **`Chris_Schulz_CV.yaml`** — single source of truth for the Python pipeline. Contains `cv:` (content) and `design:` (layout/theme) sections.
- **`data/*.parquet`** — structured CV data for the R pipeline (experience, education, skills), built from `local/local.R`.
- **`cv_public/cv_public.Rmd`** — R/vitae template that reads the parquet files and renders to PDF using the `awesome-cv` LaTeX class.
- **`cv_private/`** — gitignored; private variant of the CV.
- **`local/`** — gitignored; contains `local.R` (data builder) and `local.md` (personal knowledge notes).

## Gitignore notes

`local/`, `cv_private/`, and `jobs/` are gitignored. The public PDF at `cv_public/cv_public.pdf` is committed and linked from the README.
