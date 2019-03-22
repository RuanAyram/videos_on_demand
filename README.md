# README

## Gems

| Gems  | Purpose |
| :---: |:-------:|
| [Devise](https://github.com/plataformatec/devise) | User Authentication |
| [Rspec](https://github.com/rspec/rspec-rails) | Default tests |
| [Rubocop](https://github.com/rubocop-hq/rubocop) | Static code analyzer and formatter |
| [factory_bot_rails](https://github.com/thoughtbot/factory_bot_rails) | Setting up Ruby objects as test data |
| [shoulda-matchers](https://github.com/thoughtbot/shoulda-matchers) | Simple one-liner tests |
|  |  |
| General | Version |
| Ruby  | 2.5.1 |
| Rails | 5.2.2 |

## Getting started

Clone the repository
```
git clone git@github.com:RuanAyram/videos_on_demand.git
```

#### Edit `config/database.yml`, if necessary

Enter in the folder, then run these commands to install gems, create a database and populate, then run api locally
```
cd videos_on_demand

bundle install

rails db:create && rails db:migrate && rails db:seed

rails s
```

### For login: use the email(fixed_user@email.com) with password(123456789)


### For test, run:

```
 $ bundle exec rspec
```

### Heroku

[Videos_on_Demand](https://videos-on-demand.herokuapp.com/)

#### TO DO

- [x] Controller / Models / Views
- [x] Video player
- [x] Adjustment in Views(Model) logic
- [ ] Rspec Tests
- [x] Seeds
- [x] Devise views
- [x] Heroku
