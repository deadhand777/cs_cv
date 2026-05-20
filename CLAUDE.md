# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What this repo is

A personal CV repository for Chris Schulz. The active pipeline is Typst/brilliant-cv (`cv/`). A secondary Python/RenderCV pipeline exists using `Chris_Schulz_CV.yaml`. The legacy R/vitae pipeline has been moved to `local/` (gitignored).

## Generating the CV (Typst/brilliant-cv — active pipeline)

```bash
cd cv && typst compile cv.typ
```

Output: `cv/cv.pdf` (A4, 2 pages).

**Font requirement:** Typst requires static OTF/TTF fonts. Variable fonts (e.g. from Homebrew casks) are not supported. Install static variants if compilation produces font warnings:

```bash
# Source Sans 3 static OTFs
curl -L "https://github.com/adobe-fonts/source-sans/releases/download/3.052R/OTF-source-sans-3.052R.zip" -o /tmp/ss3.zip
unzip -q /tmp/ss3.zip -d /tmp/ss3 && cp /tmp/ss3/OTF/SourceSans3-*.otf ~/Library/Fonts/

# Roboto static TTFs
curl -L "https://github.com/googlefonts/roboto/releases/download/v2.138/roboto-unhinted.zip" -o /tmp/roboto.zip
unzip -q /tmp/roboto.zip -d /tmp/roboto && cp /tmp/roboto/Roboto-*.ttf ~/Library/Fonts/
```

## Generating the CV (Python/RenderCV — secondary pipeline)

```bash
uv sync
uv run rendercv render Chris_Schulz_CV.yaml
```

Output goes to `rendercv_output/`.

## Architecture

### Typst pipeline (`cv/`)
- **`cv/cv.typ`** — entry point; imports `@preview/brilliant-cv:4.0.1`, loads `profile_en/metadata.toml`, includes content modules
- **`cv/profile_en/metadata.toml`** — personal info, theme, layout spacing (`before_section_skip`, `before_entry_skip`, `before_entry_description_skip` — all `"0pt"` to keep at 2 pages), and ATS `injected_keywords_list` (invisible in PDF)
- **`cv/profile_en/professional.typ`** — experience entries using `cv-entry`, `cv-entry-start`, `cv-entry-continued` for multi-role companies
- **`cv/profile_en/skills.typ`** — skill sections using `cv-skill` with `h-bar` separators
- **`cv/profile_en/education.typ`** — education entries
- **`cv/assets/avatar.jpeg`** — profile photo

The `projects` and `certificates` modules exist but are commented out in `cv.typ`.

### RenderCV pipeline
- **`Chris_Schulz_CV.yaml`** — single source of truth; contains `cv:` (content) and `design:` (layout) sections. Schema pinned to RenderCV v2.6.

### CI
- **`.github/workflows/compile-cv.yml`** — on push to `main`: installs static fonts, compiles `cv/cv.typ` with `typst-community/setup-typst@v3` (^0.14.0), and auto-commits `cv/cv.pdf` if changed.

### Local research wiki
- **`.wiki/`** — gitignored local wiki (llm-wiki plugin). Tracks research on Head of Data & AI job market. Use `/wiki:research`, `/wiki:query`, `/wiki:output` to interact.

## Page budget

The CV must fit 2 pages. Layout spacing in `metadata.toml` is already at minimum (`"0pt"`). If content additions push it to 3 pages, consolidate older experience bullets (pre-2020 entries: Cerulli, Lloyds, Europace Data Analyst) before touching recent roles.
