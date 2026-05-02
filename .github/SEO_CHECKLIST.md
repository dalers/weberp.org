# webERP.org SEO Checklist

This checklist ensures all pages maintain consistent SEO best practices and helps guide future updates to the website.

## For Every New Page

### On-Page SEO
- [ ] **Page Title** (50-60 characters)
  - Include target keyword(s)
  - Include brand name (webERP)
  - Example: "Feature Name - ERP for Business | webERP"
  
- [ ] **Meta Description** (150-160 characters)
  - Unique and compelling
  - Include target keywords naturally
  - Include call-to-action if applicable
  - Example: "Learn how webERP helps with inventory management. Free, open-source ERP for accounting and business management."

- [ ] **Meta Charset & Viewport**
  - Include: `<meta charset='utf-8'>`
  - Include: `<meta name="viewport" content="width=device-width, initial-scale=1">`

- [ ] **Canonical URL**
  - Include: `<link rel="canonical" href="https://weberp.org/path-to-page.html" />`
  - Use absolute HTTPS URL

### Social Media & Sharing
- [ ] **Open Graph Tags**
  ```html
  <meta property="og:type" content="website" />
  <meta property="og:title" content="Page Title" />
  <meta property="og:description" content="150-160 char description" />
  <meta property="og:image" content="https://weberp.org/images/[image].avif" />
  <meta property="og:url" content="https://weberp.org/[page].html" />
  ```

- [ ] **Twitter Cards**
  ```html
  <meta name="twitter:card" content="summary_large_image" />
  <meta name="twitter:title" content="Page Title" />
  <meta name="twitter:description" content="Short description" />
  <meta name="twitter:image" content="https://weberp.org/images/[image].avif" />
  ```

### Content Structure
- [ ] **H1 Tag**
  - Include one H1 per page
  - Include primary keyword
  - Example: `<h1>Open Source ERP Features for Accounting</h1>`

- [ ] **Heading Hierarchy**
  - Use H2 for main sections
  - Use H3 for subsections
  - Never skip heading levels (H1 → H3 would skip H2)

- [ ] **Content Length**
  - Aim for 300+ words on main pages
  - Longer for comprehensive guides (800+ words)
  - Shorter for landing pages is OK if highly targeted

### Images & Media
- [ ] **Image Alt Text**
  - Describe the image accurately
  - Include keywords where natural (not keyword stuffing)
  - Example: `<img alt="webERP accounting dashboard showing invoice management" />`

- [ ] **Image Title Attributes**
  - Add meaningful titles (not just "image")
  - Example: `title="webERP Inventory Management Features"`

- [ ] **Image File Names**
  - Use descriptive, hyphenated names
  - Example: `erp-accounting-dashboard.avif` (NOT `image1.avif`)

- [ ] **Image Format**
  - Prefer AVIF for better compression
  - Use WebP as fallback
  - Ensure file size is optimized

### Internal Linking
- [ ] **Contextual Links**
  - Link to related pages naturally within content
  - Use keyword-rich anchor text (not "click here")
  - Example: "Learn more about [ERP features](./Features.html)"

- [ ] **Navigation Links**
  - Ensure main pages are linked in header/footer
  - Link Features page from homepage
  - Link Documentation from Features

- [ ] **External Links to Main Repo**
  - Link to GitHub repository: `https://github.com/timschofield/webERP`
  - Link to Discussions: `https://github.com/timschofield/webERP/discussions`
  - Link to Releases: `https://github.com/timschofield/webERP/releases`

### Technical SEO
- [ ] **Favicon**
  - Include: `<link href="favicon.ico" rel='shortcut icon' type='image/x-icon'>`

- [ ] **CSS & Performance**
  - Link to: `<link rel="stylesheet" href="css/style.css">`
  - Keep CSS file optimized

- [ ] **Mobile Responsive**
  - Test on mobile devices
  - Ensure viewport is correctly set

## For Special Page Types

### Manual/Documentation Pages
- [ ] Include in sitemap.xml
- [ ] Set priority to 0.65 in sitemap
- [ ] Add breadcrumb navigation if applicable
- [ ] Link to related Manual pages
- [ ] Include search-friendly headings

### Homepage
- [ ] Add FAQ schema markup (JSON-LD)
- [ ] Add Organization schema (JSON-LD)
- [ ] Add SoftwareApplication schema (JSON-LD)
- [ ] Include clear value proposition
- [ ] Link to key pages (Features, Documentation, Demo)
- [ ] Include call-to-action buttons

### Features Page
- [ ] Use H2 for each feature category
- [ ] Add introductory descriptions before lists
- [ ] Link to related documentation
- [ ] Use descriptive headings (keyword-targeted)

### Development Page
- [ ] Link to GitHub repository
- [ ] Include steps for contributing
- [ ] Link to Coding Standards page
- [ ] Include calls-to-action for contributors

## After Publishing

### Submission
- [ ] Regenerate sitemap.xml (include new page)
- [ ] Update sitemap XML with new URL and lastmod date
- [ ] Submit sitemap to Google Search Console
- [ ] Add page URL to any relevant internal link hubs

### Monitoring
- [ ] Check Google Search Console for indexing (1-2 weeks)
- [ ] Monitor for indexing errors
- [ ] Check for "Mobile Usability" issues
- [ ] Monitor organic search traffic in Analytics
- [ ] Track keyword rankings for target terms

## Keyword Targets

### Primary Keywords
- Open source ERP
- Web-based ERP
- ERP software
- Free accounting software
- Business management software
- Inventory management software

### Secondary Keywords
- Open source accounting
- PHP ERP
- Custom ERP
- ERP for small business
- Manufacturing ERP
- Distribution software

## Common SEO Issues to Avoid

❌ **DO NOT**:
- Keyword stuff titles or descriptions
- Use duplicate meta descriptions across pages
- Add multiple H1 tags per page
- Use broken internal or external links
- Add large unoptimized images
- Hide content or use white text on white background
- Copy content from other sites
- Add excessive redirects
- Use outdated best practices

✅ **DO**:
- Write for humans first, search engines second
- Test links before publishing
- Update lastmod dates in sitemap
- Use consistent formatting and structure
- Monitor Search Console regularly
- Create original, high-quality content
- Use natural, conversational language
- Include CTAs and clear next steps

## Seasonal Updates

- **Q1**: Update version numbers, review keyword rankings
- **Q2**: Check for indexing issues, audit broken links
- **Q3**: Review organic traffic patterns, update Manual if needed
- **Q4**: Prepare announcements, refresh homepage messaging

## Tools & Resources

- **Google Search Console**: Track indexing, submit sitemap
- **Google Analytics**: Monitor traffic and user behavior
- **Lighthouse**: Check performance and SEO scores
- **SEMrush (Free)**: Check keyword rankings and backlinks
- **Bing Webmaster Tools**: Submit sitemap to Bing
- **Schema.org**: Structured data reference

## Notes

- This website is static HTML/CSS/JS—no database or backend framework
- All changes require manual HTML editing
- After editing, regenerate sitemap.xml
- Test all changes in a browser before committing
- Keep .editorconfig settings (tabs, UTF-8, LF)
- See .github/copilot-instructions.md for development practices

---

Last Updated: 2026-05-02
