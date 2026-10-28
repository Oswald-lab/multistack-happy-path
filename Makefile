test:
	cd services/ruby-sinatra-api && bundle exec rake test
	cd services/elixir-worker && mix test
	cd services/go-gateway && go test ./...
	cd services/java-cli && gradle build
	cd apps/node-web && npm test
.PHONY: test
