#!/bin/bash

# Generate sitemap.xml with Manual pages
cat > sitemap.xml << 'SITEMAP'
<?xml version="1.0" encoding="UTF-8"?>
<urlset
      xmlns="http://www.sitemaps.org/schemas/sitemap/0.9"
      xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
      xsi:schemaLocation="http://www.sitemaps.org/schemas/sitemap/0.9
            http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd">

<!-- Main pages -->
<url>
  <loc>https://weberp.org/</loc>
  <lastmod>2026-05-02</lastmod>
  <priority>1.00</priority>
</url>
<url>
  <loc>https://weberp.org/Features.html</loc>
  <lastmod>2026-05-02</lastmod>
  <priority>0.90</priority>
</url>
<url>
  <loc>https://weberp.org/Development.html</loc>
  <lastmod>2026-05-02</lastmod>
  <priority>0.80</priority>
</url>
<url>
  <loc>https://weberp.org/Documentation.html</loc>
  <lastmod>2026-05-02</lastmod>
  <priority>0.85</priority>
</url>
<url>
  <loc>https://weberp.org/Contributing.html</loc>
  <lastmod>2026-05-02</lastmod>
  <priority>0.75</priority>
</url>
<url>
  <loc>https://weberp.org/CodingStandards.html</loc>
  <lastmod>2026-05-02</lastmod>
  <priority>0.70</priority>
</url>

<!-- Manual/Documentation pages -->
SITEMAP

# Add Manual pages
for file in Manual/Manual*.html; do
    filename=$(basename "$file")
    lastmod=$(stat -c %y "$file" 2>/dev/null | cut -d' ' -f1)
    [ -z "$lastmod" ] && lastmod="2026-05-02"
    
    cat >> sitemap.xml << MANUAL
<url>
  <loc>https://weberp.org/$file</loc>
  <lastmod>$lastmod</lastmod>
  <priority>0.65</priority>
</url>
MANUAL
done

cat >> sitemap.xml << 'SITEMAP_END'
</urlset>
SITEMAP_END

echo "Sitemap generated successfully!"
