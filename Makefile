.PHONY: all
all: .generator .env
	@rm -rf ./lib/v1 ./lib/v2 ./spec/v1/api ./spec/v1/models ./spec/v2/api ./spec/v2/models
	@pre-commit run --all-files --hook-stage=manual openapi-generator || true
	@mkdir -p docs/v1 docs/v2 spec/v1 spec/v2
	@cp -R v1/lib/datadog_api_client ./lib/
	@cp -R v2/lib/datadog_api_client ./lib/
	@rm lib/datadog_api_client/v*/version.rb
	@cp -nR v1/spec/*_spec.rb v1/spec/api v1/spec/models ./spec/v1/ || true
	@cp -nR v2/spec/*_spec.rb v2/spec/api v2/spec/models ./spec/v2/ || true
	@cp -R v1/docs/* ./docs/v1/
	@cp -R v2/docs/* ./docs/v2/
	@cp v1/README.md ./docs/v1/
	@cp v2/README.md ./docs/v2/
	@rm -rf v1 v2
	@pre-commit run --all-files --hook-stage=manual docs || echo "modified files"

.PHONY: .env
.env:
	@echo "export UID=$(shell id -u)\nexport GID=$(shell id -g)" > $@
