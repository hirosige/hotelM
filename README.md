# GraphQL API Template Guideline

### Table of Contents
<!-- TOC -->

- [GraphQL API Template Guideline](#graphql-api-template-guideline)
        - [Table of Contents](#table-of-contents)
        - [Overview](#overview)
        - [Installation & Setup](#installation--setup)
        - [Special Thanks](#special-thanks)

<!-- /TOC -->

### Overview

`GraphQL API + Rails5 + Auth0 + Json Web Token`
* login via auth0 service (no original login feature)
* use JWT to authenticate user API request
* have API home / API dashboard view (currently no contents)

|item  |Version   |
|------|----------|
|Ruby  |~> 2.5.0  |
|Rails |~> 5.0.0  |
|Mysql |~> 5.5.56 | => plan to upgrade

```ruby
# Necessary Gems
...

gem 'bcrypt', '~> 3.1.7'
gem 'dotenv-rails', groups: [:development, :test]
gem 'rack-cors','~>0.4.1'
gem 'active_model_serializers', '~> 0.10.0'
gem 'knock', '~> 2.0'

gem 'graphql'
gem 'graphiql-rails', group: :development

gem 'omniauth', '~> 1.6.1'
gem 'omniauth-auth0', '~> 2.0.0'

...

```

### Installation & Setup

Setup Environment
```bash
vagrant up

```

.env
```ruby
OAUTH_CLIENT_ID=[[OAUTH_CLIENT_ID]]
OAUTH_DOMAIN=[[OAUTH_DOMAIN]]
OAUTH_CLIENT_SECRET=[[OAUTH_CLIENT_SECRET]]
API_CLIENT_ID=[[API_CLIENT_ID]]
API_DOMAIN=[[API_DOMAIN]]
API_CLIENT_SECRET=[[API_CLIENT_SECRET]]
```

### Special Thanks
