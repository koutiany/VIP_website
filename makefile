PORT := 4000

serve:
	@if lsof -i :$(PORT) >/dev/null 2>&1; then \
		echo ""; \
		echo "Jekyll may already be running."; \
		echo "Open http://localhost:$(PORT)"; \
		echo ""; \
		lsof -nP -iTCP:$(PORT) -sTCP:LISTEN; \
		exit 1; \
	fi
	bundle exec jekyll serve --source . --trace --destination docs
