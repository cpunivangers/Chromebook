rm -rf .git
git init
git config user.email "christian.pottier@univ-angers.fr"
git config user.name "cpunivangers"
git remote add origin git@github.com:cpunivangers/Chromebook.git
git add -A
git commit -m "raz"
git push -f origin main
