.PHONY: all
all:
	@rm -rf ./lib/datadog_api_client/v1 ./lib/datadog_api_client/v2 examples/*
	@pre-commit run --all-files --hook-stage=manual generator-v1 || true
	@pre-commit run --all-files --hook-stage=manual generator-v2 || true
	@pre-commit run --all-files --hook-stage=manual examples || true
	@pre-commit run --all-files --hook-stage=manual format-examples || true
	@pre-commit run --all-files --hook-stage=manual docs || echo "modified files"
