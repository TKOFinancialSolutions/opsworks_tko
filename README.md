# opsworks_tko

http://opsworks-ruby.rzegocki.pl/configuration-builder
http://opsworks-ruby.readthedocs.io/en/latest/getting_started.html

# Custom JSON

## Main Layer
```json
{
  "tko": {
    "global": {
      "environment": "staging"
    },
    "database": {
      "adapter": "postgresql",
      "pool": 35
    },
    "appserver": {
      "application_yml": true
    },
    "worker": {
      "adapter": "sidekiq",
      "process_count": 1
    },
    "whenever": {
      "roles": ["default"]
    }
  }
}
```
