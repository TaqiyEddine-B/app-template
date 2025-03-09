
setup:
	uv venv $(UV_PROJECT_ENVIRONMENT)
	@echo "source $(UV_PROJECT_ENVIRONMENT)/bin/activate" >> ~/.bashrc

install:
	uv lock
	uv sync --frozen

clean:
	rm -rf $(VENV_DIR)
	@echo "Virtual environment removed"

run:
	streamlit run main.py