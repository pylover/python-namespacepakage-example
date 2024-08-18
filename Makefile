include common.mk


.PHONY: venv
venv:
	python3 -m venv $(VENVPATH)
	$(PIP) install ipython


.PHONY: venv-delete
venv-delete:
	rm -rf $(VENVPATH)


.PHONY: fresh
fresh:
	make venv-delete
	make venv


.PHONY: installall
installall:
	cd foo-bar; make install
	cd foo-baz; make install


.PHONY: uninstallall
uninstallall:
	cd foo-bar; make uninstall
	cd foo-baz; make uninstall


.PHONY: test
test:
	./test.py
