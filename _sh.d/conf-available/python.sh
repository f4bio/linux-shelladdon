#######
## environment
#
if [ -d "$HOME"/.pyenv ]; then
	export PYENV_ROOT="$HOME"/.pyenv
fi
if [ -d "$HOME"/.python ]; then
	export PYTHON_ROOT="$HOME"/.python
fi
if [ -d "$HOME"/.python3 ]; then
	export PYTHON_ROOT="$HOME"/.python3
fi
if [ -d /opt/python ]; then
	export PYTHON_ROOT=/opt/python
fi
if [ -d /opt/python3 ]; then
	export PYTHON_ROOT=/opt/python3
fi

#######
## path
#
if [ -d "$PYENV_ROOT"/bin ];then
	export PATH="$PATH":"$PYENV_ROOT"/bin
fi
if [ -d "$PYTHON_ROOT"/bin ];then
	export PATH="$PATH":"$PYTHON_ROOT"/bin
fi