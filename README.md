# Multistack happy-path repo

Monorepo with five independent projects, each with its own build file and passing tests:

| Path | Stack | Detected by | Test command |
|---|---|---|---|
| `services/ruby-sinatra-api` | Ruby / Sinatra | `Gemfile`, `config.ru` | `bundle exec rake test` |
| `services/elixir-worker` | Elixir / Mix (OTP) | `mix.exs` | `mix test` |
| `services/go-gateway` | Go | `go.mod` | `go test ./...` |
| `services/java-cli` | Java / Gradle | `build.gradle` | `gradle build` |
| `apps/node-web` | Node.js | `package.json` | `npm test` |

No root build file by design: an importer should detect every sub-project. `make test` runs all of them.
