# Copilot Instructions for weberp.org

This is the website repository for **webERP**, an open-source ERP system. This repo contains the public-facing website (HTML, CSS, JS), documentation, and project information—not the main application code (which is in `timschofield/webERP`).

## Repository Overview

- **Purpose**: Static website and documentation for the webERP project
- **Tech Stack**: HTML5, CSS3, vanilla JavaScript, static site
- **Key Directory**:
  - `/css/` — Stylesheet (single `style.css`)
  - `/Manual/` — User documentation (HTML files)
  - `/images/` — Site assets (icons, screenshots)
  - `/downloads/` — PDFs and release artifacts
  - Root `.html` files — Main website pages (index, Features, Development, Documentation, etc.)

## Project Structure & Conventions

### HTML Files

All pages follow a consistent structure:
- Use `<!DOCTYPE html>` and `<html lang="en">`
- Include `<meta charset='utf-8'>` and viewport settings
- Link favicon, stylesheet, and canonical URLs
- Follow semantic markup with `<header>`, `<section>`, `<main>`, `<footer>`
- Use class-based CSS organization (avoid inline styles)

Key pages:
- `index.html` — Homepage with project overview
- `Features.html` — Feature showcase
- `Development.html` — Developer contribution workflow and Git instructions
- `Documentation.html` — Links to user manuals and guides
- `CodingStandards.html` — PHP/coding conventions for webERP developers
- `Contributing.html` — Ways to contribute (developers, translators, designers)

### CSS & Styling

- Single stylesheet: `css/style.css` (currently ~6.7 KB)
- Uses semantic class names (e.g., `.badges-container`, `.nav-item`, `.icons`, `.main-title`)
- Shared styling across all pages to maintain consistency
- No preprocessor (Sass/Less) — plain CSS
- EditorConfig enforces tabs for indentation

### JavaScript

- `fetch.js` — Minimal script for smooth page loading via `fetch()` API
- Only used for progressive enhancement (dynamic page loading)
- Vanilla JS, no frameworks

## Coding Standards (from weberp.org/CodingStandards.html)

When editing HTML/CSS/JS:

1. **HTML**:
   - Use semantic HTML5 elements
   - Keep markup readable and well-structured
   - Use consistent indentation (tab-based per `.editorconfig`)

2. **CSS**:
   - Keep selectors simple and readable
   - Use meaningful class names
   - Avoid inline styles; use classes instead
   - Maintain visual consistency across pages

3. **JavaScript**:
   - Prefer vanilla JS over frameworks for simple interactions
   - Keep code clear and understandable
   - Avoid obfuscation

## EditorConfig

The repo includes `.editorconfig` with:
- Tab-based indentation (not spaces)
- UTF-8 encoding
- Unix line endings (LF)
- Final newline required
- Trimmed trailing whitespace

Most editors auto-apply these rules; ensure your editor respects `.editorconfig`.

## Git Workflow

From `Development.html`:
1. Fork the repository on GitHub
2. Clone your fork locally
3. Add upstream remote: `git remote add upstream https://github.com/timschofield/weberp.org.git`
4. Create a feature branch with a brief, hyphenated name (max 6 words, e.g., `fix-nav-link-spacing`)
5. Commit with clear messages
6. Push to your fork and create a pull request

## Common Tasks

### Adding/Editing Content

- Edit the relevant `.html` file in the root directory or `/Manual/` subdirectory
- Maintain the existing page structure and class naming
- Test in a browser to ensure layout and links work correctly
- Keep page hierarchy consistent (nav items, page titles, sections)

### Updating Styling

- Edit `css/style.css`
- Test changes across all pages (index, Features, Development, etc.) to ensure consistency
- Avoid adding page-specific styles; keep styles reusable

### Adding Documentation

- Place new manual pages in `/Manual/` directory
- Follow naming convention: `Manual[TopicName].html` (e.g., `ManualInventory.html`)
- Use consistent HTML structure as other Manual pages
- Add links from `Documentation.html` or `ManualContents.html`

### Updating Manual Downloads

- PDF files and guides go in `/downloads/` directory
- Update links in `Documentation.html` if adding new downloads
- Maintain descriptive filenames (e.g., `webERP.Guide.Project.2024-11-26.pdf`)

## Quality Checks Before Committing

- **Links**: Test all internal and external links work
- **Images**: Verify images load (use relative paths, prefer `.avif` format)
- **HTML Validation**: Ensure valid HTML5 (no missing closing tags, proper nesting)
- **CSS**: Check styling renders consistently across pages
- **Mobile**: Test responsive design on mobile devices
- **Accessibility**: Use semantic HTML; avoid `<div>` where semantic elements apply

## Related Resources

- **Main webERP Repository**: https://github.com/timschofield/webERP
  - Contains the actual ERP application (PHP)
  - Follow coding standards from `webERP/CODING_STANDARDS.md`
- **webERP GitHub Discussions**: For questions and community support
- **webERP Wiki**: Development reference and technical details
- **WordPress Coding Standards**: webERP standards are based on these

## No Build/Test Steps Required

This is a static website repository. There is no build process, linter, or test suite to run. Changes are validated through:
- Manual testing in a browser
- Visual review in pull requests
- Link validation

Simply edit, commit, and push!
