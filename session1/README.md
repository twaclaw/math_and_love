# Outline
* [Command line](#command-line)
* [Python](#python)


## Command Line

Many reasons why ...

More typing ⌨️ less clicking 🖱️...

* A matter of convenience / necessity
	* Headless computers (e.g., cloud instances, [Raspberry Pi](https://www.raspberrypi.org/), etc.)
* Universality (e.g., across different Linux distributions)
* Speed
* Programmability, easy to automate
* Easier to communicate and document (for others, for yourself)
* Composability: ease to be created and consumed by other programs
* It changes they way you work and tackle problems. It rewires your brain! 🧠🤯


### Unix Philosophy

The [Unix Philosophy](https://en.wikipedia.org/wiki/Unix_philosophy) is essentially about modularity and composability; divide and conquer;  having simple programs that do one thing well.

* Write programs that do one thing and do it well.
* Write programs to work together.
* Write programs to handle text streams, because that is a universal interface.


### Examples

* Nobel prices 🏅
* Hotdogs 🌭

## Python

* Python is a complex numbers calculator

```Python
python -c "print((3 + 4j)*(1 - 1j))
```

* [REPL](https://en.wikipedia.org/wiki/Read%E2%80%93eval%E2%80%93print_loop)

* [IPython](https://en.wikipedia.org/wiki/IPython)

* Virtual environments, distributions,  and package managers
	* [pip](https://pypi.org/project/pip/)
	* [conda](https://docs.conda.io/en/latest/)

* [Jupyter](https://en.wikipedia.org/wiki/Project_Jupyter)
	* Code
	* Markdown
		* Markdown
		* LaTeX
		* HTML
	* Shell


### Virtual environments
Projects should be self-contained. We should avoid polluting the system installation.

Setting up and activating a virtual environment

```Python
virtualenv -p python3.11 venv

# venv is just the name of the environment you can call it somehow else, for instance
virtualenv -p python3.11 py3.11

# alternatively to virtualenv, you can use:
python -m venv venv

# to activate
. venv/bin/activate

# or
. python3.11/bin/activate

# once activated, you can start installing packages as in
pip install jupyter numpy plotly
```
