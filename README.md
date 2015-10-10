# HiThere

## Setting up

```ruby
gem 'hi_there', github: 'robodisco/hi_there'

```sh
bundle install
rails g hi_there:install
```

This will create a hi_there initializer file which **you will definately need to edit**. It will look something like this. See the initializer for more information regarding each setting.

```ruby
HiThere.user_class = "User" 
HiThere.authorization_method = :can_manage_hi_there?
HiThere.current_user_method = :current_user
HiThere.redirect_unauthorized_path = '/'
HiThere.app_domain = "example.com"
HiThere.reply_to = 'your_email@example.com'
HiThere.from = 'Admin'
HiThere.per_page = 20
```

## Styling

To prevent your existing styles creeping into HiThere and vica versa, the gem explictly loads a stylesheet in its applciation layout by the name of hi-there.css rather than the usual appication.css we are all accustomed too. 

You can find this stylesheet in `app/vendor/assets/stylesheets` where you can style the engine to your hearts content. 

**What? You'd rather it be styled for you?**

Well in that case you should also add this to your gemfile:

```ruby
gem 'hi_there_bootstrap', github: 'robodisco/hi_there_bootstrap'
```

then in the hi-there.scss file mentioned above add the following

```scss
@import "hi-there-bootstrap";
```

Which will use bootstrap via the bootstrap-sass gem to "jazz" things up a bit. 

You can add further stylings after the `@import` decalaration if you require further customization. 

## Customizing sent emails

Subscribers will receive two email types:

1. "A thank you for signing up. Please confirm your email" email.
2. The scheduled emails from your course with an unsubscribe link at the bottom.

If you want to customize these emails you can copy the mailer views they use to your app via:

```sh
rails g hi_there:mailer_views
```
