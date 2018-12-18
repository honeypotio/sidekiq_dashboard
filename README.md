Sidekiq Dashboard
---

Standalone application for the [Sidekiq][2] dashboard

---


## Deploy on Heroku

[![Heroku Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy?template=https://github.com/honeypotio/sidekiq_dashboard)

Local development
-----------------
To start it locally, use `bundle exec rackup`

### Rinning with docker

```
docker build -t sidekiq_dashboard .
docker run \
  -p 3000:8080 \
  -e REDIS_URL="redis://some.host.name:6379" \
  -e PASSWORD=T0pS3cret \
  sidekiq_dashboard
```

License
-------

Copyright © 2016 [Honeypot GmbH][1]. It is free software, and may be
redistributed under the terms specified in the [LICENSE](/LICENSE) file.

About Honeypot
--------------

[![Honeypot](https://www.honeypot.io/logo.png)][1]

Honeypot is a developer focused job platform.
The names and logos for Honeypot are trademarks of Honeypot GmbH.

[1]: https://www.honeypot.io?utm_source=github
[2]: http://sidekiq.org
