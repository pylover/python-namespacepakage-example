HERE = $(shell readlink -f `dirname .`)
PKG = foo
VENVPATH ?= $(HOME)/.virtualenvs/foo
PYTEST_FLAGS = -v
TEST_DIR = tests
PY ?= $(VENVPATH)/bin/python3
PIP ?= $(VENVPATH)/bin/pip3


.PHONY: venv
venv:
	python3 -m venv $(VENVPATH)


.PHONY: venv-delete
venv-delete:
	rm -rf $(VENVPATH)


.PHONY: install
install:
	$(PIP) install -e .


.PHONY: uninstall
uninstall:
	$(PIP) uninstall -y $(PKG)
