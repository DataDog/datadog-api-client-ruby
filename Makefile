.PHONY: all
all: .generator .env
	@rm -rf ./lib/v1 ./lib/v2 ./examples/generated
	@pre-commit run --all-files --hook-stage=manual openapi-generator || true
	@mkdir -p spec/v1 spec/v2 examples/generated/v1 examples/generated/v2
	@cp -R v1/lib/datadog_api_client ./lib/
	@cp -R v2/lib/datadog_api_client ./lib/
	@rm lib/datadog_api_client/v*/version.rb
	@ls v1/docs/*API.md | grep -v IPPrefixesAPI.md | xargs -n1 ./extract-code-blocks.awk -v output="examples/generated/v1"
	@ls v2/docs/*API.md | grep -v IPPrefixesAPI.md | xargs -n1 ./extract-code-blocks.awk -v output="examples/generated/v2"
	@pre-commit run --all-files --hook-stage=manual format-examples || true
	@rm -rf v1 v2
	@pre-commit run --all-files --hook-stage=manual docs || echo "modified files"

.PHONY: .env
.env:
	@echo "export UID=$(shell id -u)\nexport GID=$(shell id -g)" > $@
