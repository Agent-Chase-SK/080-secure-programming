function InstallJupyterExtensions() {
	jupyter contrib nbextension install --sys-prefix
	jupyter nbextension enable contrib_nbextensions_help_item/main
	jupyter nbextension enable hide_input/main
	jupyter nbextension enable exercise/main
	jupyter nbextension enable exercise2/main
	jupyter nbextension enable collapsible_headings/main
	jupyter nbextension enable init_cell/main
}

function ActivateVirtual() {
	python -m venv env
	.\env\scripts\activate.ps1
}

function InstallRequirements() {
	pip install wheel
	pip install --requirement .\requirements.txt
}

function Deactivate() {
	deactivate
}

function Main() {
	ActivateVirtual
	InstallRequirements
	# InstallJupyterExtensions
	Deactivate
}

Main
