hexo g
cp CNAME ./public
zip -r source.zip ./source
zip -r layout.zip ./themes/raytaylorism/layout/
zip -r drafts.zip ./_drafts/
mv source.zip ./public/
mv layout.zip ./public/
mv drafts.zip ./public/
cp ref.bib ./public
cp metadata.yml ./public
hexo d
