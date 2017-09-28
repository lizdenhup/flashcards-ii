### STEP-BY-STEP DESCRIPTION OF DEVELOPING THIS APP

#### INITIAL SET-UP
1. Created a Github repository called 'flashcards-ii'. Initialized the repo with a .gitignore file for Rails, readme.md file, and MIT license. Cloned the repo to local machine and then cd'd into the flashcards-ii directory.
2. Inputted the following into terminal: 
~~~~
rails new flashcard_api --database=postgresql --api
~~~~
This command generated a new Rails 5 API called 'flashcard_api' and set the database to postgresql in preparation for deploying the app to Heroku.
3. cd'd into flashcard_api directory. Uncommented
```
gem 'rack-cors'
gem 'jbuilder', '~> 2.5'
```
in gemfile. Ran 'bundle' to install these gems.
4. Inputted the following commands into the terminal, in this order:
```
rails g model user email:string nickname:string password_digest:string
```
```
rails g model subject name:string
```
```
rails g model deck user:references subject:references
```
```
rails g model card deck:references question:text answer:text
```
(Have not yet migrated dbs).
- Also added faraday, JWT, and bcrypt to gemfile and ran bundle.
5. Added has_secure_password macro to user model.
6. Used this tutorial [here](https://www.codementor.io/devops/tutorial/getting-started-postgresql-server-mac-osx) to figure out how to add roles, etc with Postgres.
7. Once pg database was configured correctly I ran
```
rake db:create
```
and 
```
rake db:migrate
```
I then checked the status of my migrations with
```
rake db:migrate:status
```
and found that all four tables (users, subjects, decks, cards) were up. 
