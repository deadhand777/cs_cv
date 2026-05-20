# Brilliant-CV: Chris Schulz – AI Engineer

Generated using the [brilliant-CV](https://github.com/yunanwg/brilliant-CV) Typst template (v4.0.1).

## How This CV Was Created

### 1. Source Data

All CV content was pulled from the single source of truth: [`Chris_Schulz_CV.yaml`](../Chris_Schulz_CV.yaml) (the RenderCV YAML used by the existing Python pipeline).

### 2. Template Reference

The brilliant-CV template was already cloned into [`brilliant-cv/`](../brilliant-cv/). Its example English profile (`brilliant-cv/profile_en/`) served as the structural reference for every file created below.

### 3. Files Created

| File | Purpose |
|---|---|
| `cv.typ` | Main entry point. Imports the `brilliant-cv` package, loads `profile_en/metadata.toml`, and includes the content modules in order. Photo and publications modules were omitted. |
| `profile_en/metadata.toml` | Personal info (name, email, GitHub, LinkedIn, location), layout configuration, ATS keyword injection, and theme settings. |
| `profile_en/professional.typ` | All 7 professional roles from the YAML. Multi-role companies (Dr Klein, Europace) use the `cv-entry-start` / `cv-entry-continued` pattern; single-role companies use `cv-entry`. |
| `profile_en/education.typ` | MSc and BSc from Leipzig University with key areas and dissertation titles. |
| `profile_en/skills.typ` | 4 skill groups (Generative AI & LLMs, ML & Data Science, Platform & Data Engineering, Leadership & Strategy) using `cv-skill` with `h-bar` separators. |
| `profile_en/projects.typ` | 3 key production projects (IDP Platform, MCP Agent Platform, Datalakehouse) extracted from the Dr Klein experience highlights. |
| `profile_en/certificates.typ` | Placeholder file with commented-out examples — no certificates were listed in the source YAML. |

### 4. Design Choices

- **Theme:** `darknight` accent color for a professional, understated look.
- **No photo / no logos:** `display_profile_photo = false` and `display_logo = false` — the source YAML has a photo but the brilliant-CV template expects a specific `avatar.png` asset; logos were not available for the listed companies.
- **Company-first layout:** `display_entry_society_first = true` to emphasise organisations, with the `cv-entry-start` / `cv-entry-continued` pattern grouping multiple roles at the same company under one header.
- **ATS keywords:** Injected via `injected_keywords_list` in `metadata.toml` (invisible in the PDF, picked up by applicant tracking systems).
- **Page counter:** Enabled in the footer since the CV spans multiple pages.

### 5. Compilation

From the repo root:

```bash
typst compile cv/cv.typ
```

Or from inside the `cv/` directory:

```bash
cd cv
typst compile cv.typ
```

> **Note:** Running `typst compile cv.typ` from the repo root will fail with _"input file not found"_ because `cv.typ` lives in `cv/`, not at the root.

Output: `cv.pdf` (~102 KB, A4).

#### Font Warnings Fix

Typst may warn about missing fonts (`Source Sans 3`, `Roboto`, `Font Awesome 7`). The Homebrew casks for Source Sans 3 and Roboto only provide **variable fonts** (e.g. `SourceSans3[wght].ttf`), which Typst does not support — install the **static** variants instead:

```bash
# Font Awesome 7 (via Homebrew — OTF, works fine)
brew install --cask font-fontawesome

# Source Sans 3 static OTFs (from Adobe Fonts GitHub)
curl -L "https://github.com/adobe-fonts/source-sans/releases/download/3.052R/OTF-source-sans-3.052R.zip" \
  -o /tmp/ss3-otf.zip
unzip -q /tmp/ss3-otf.zip -d /tmp/ss3-otf
cp /tmp/ss3-otf/OTF/SourceSans3-*.otf ~/Library/Fonts/

# Roboto static TTFs (from Google Fonts GitHub)
curl -L "https://github.com/googlefonts/roboto/releases/download/v2.138/roboto-unhinted.zip" \
  -o /tmp/roboto.zip
unzip -q /tmp/roboto.zip -d /tmp/roboto-static
cp /tmp/roboto-static/Roboto-*.ttf ~/Library/Fonts/
```

After installing, `typst compile cv.typ` should produce no warnings.

### 6. Customisation

- **Add certificates:** Uncomment and edit `profile_en/certificates.typ`.
- **Change accent color:** Edit `awesome_color` in `profile_en/metadata.toml` (presets: `skyblue`, `red`, `nephritis`, `concrete`, `darknight`, or any hex).
- **Add a photo:** Set `display_profile_photo = true` in metadata and place an `assets/avatar.png` next to `cv.typ`. Update the `cv.typ` `profile-photo` parameter.
- **Add/remove sections:** Edit the module list in `cv.typ`.
