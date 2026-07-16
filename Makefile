runb:
	cd Backend && ./.venv/bin/uvicorn main:app

resetdb:
	cd Backend && rm Solaire.db && sqlite3 Solaire.db ""

setup:
	@echo "Creating python virtual environment..."
	cd Backend && uv sync
	@echo "Createing database..."
	cd Backend && sqlite3 Solaire.db ""
	@echo "Setup Complete"
