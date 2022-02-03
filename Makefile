.PHONY: all
all:
	@rm -rf ./lib/v1 ./lib/v2
	@pre-commit run --all-files --hook-stage=manual generator || true
	@pre-commit run --all-files --hook-stage=manual docs || echo "modified files"
