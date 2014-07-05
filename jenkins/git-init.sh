
#!/bin/sh

git init

git config user.name  "Jenkins Backup"
git config user.email "jenkins@localHost"

# Base .gitignore
echo '*.log' >> .gitignore
echo '*.log' >> .gitignore
echo '*.log.?' >> .gitignore
echo '*.log.??' >> .gitignore
echo 'jobs/*/workspace' >> .gitignore
echo 'jobs/*/builds' >> .gitignore

git add .gitignore
git commit -m "Initial commit"

