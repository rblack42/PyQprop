.PHONY: init
init:
	pip install -U pip
	pip install wheel
	pip install pip-tools

.PHONY: reqs
reqs:
	pip-compile --resolver=backtracking
	pip install -r requirements.txt

.PHONY: nb
nb:
	cd book && \
		jupyter notebook
