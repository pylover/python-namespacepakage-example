include common.mk


.PHONY: venv
venv:
	python3 -m venv $(VENVPATH)
	$(PIP) install ipython


.PHONY: venv-delete
venv-delete:
	rm -rf $(VENVPATH)
