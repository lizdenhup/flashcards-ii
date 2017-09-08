### STEP-BY-STEP DESCRIPTION OF DEVELOPING THIS APP

#### INITIAL SET-UP
1. Created a Github repository called 'flashcards-ii'. Initialized the repo with a .gitignore file for Rails, readme.md file, and MIT license. Cloned the repo to local machine and then cd'd into the flashcards-ii directory.
2. Inputted the following into terminal: 
~~~~
rails new flashcard_api --database=postgresql --api-only --no-test-framework
~~~~
This command generated a new Rails 5 API called 'flashcard_api' and set the database to postgresql in preparation for deploying the app to Heroku.
3. cd'd into flashcard_api directory. Added
```
gem 'rack-cors'
```
to gemfile. Ran 'bundle' to install the rack-cors gem.








#### Things to watch out for next time
-- add secrets.yml file to global .gitignore so that it doesn't get automatically tracked to Git when initializing a Rails app. 