PIP_INSTALL_FLAGS = \
	-e 
	# --config-settings editable_mode=strict


.PHONY: install
install:
	$(PIP) install $(PIP_INSTALL_FLAGS) .


.PHONY: uninstall
uninstall:
	$(PIP) uninstall -y $(PKG)
