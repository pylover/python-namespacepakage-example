include common.mk


.PHONY: venv
venv:
	python3 -m venv $(VENVPATH)


.PHONY: venv-delete
venv-delete:
	rm -rf $(VENVPATH)


.PHONY: fresh
fresh: venv-delete venv


.PHONY: installall
installall:
	cd foo; make install
	cd foo-bar; make install
	cd foo-baz; make install


.PHONY: uninstallall
uninstallall:
	cd foo; make uninstall
	cd foo-bar; make uninstall
	cd foo-baz; make uninstall


.PHONY: test
test:
	./test.py


.PHONY: retry
retry: fresh installall test
