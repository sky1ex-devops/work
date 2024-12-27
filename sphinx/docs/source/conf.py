# Configuration file for the Sphinx documentation builder.
#
# For the full list of built-in configuration values, see the documentation:
# https://www.sphinx-doc.org/en/master/usage/configuration.html

# -- Project information -----------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#project-information

project = 'first sphinx'
copyright = '2024, Mi'
author = 'Mi'
release = '0.1'

# -- General configuration ---------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#general-configuration

# Добавьте сюда имена любых модулей расширения Sphinx в виде строк. Это могут быть
# расширения, поставляемые с Sphinx (с именем 'sphinx.ext.*') или ваши собственные
# расширения.
extensions = [
#После этого при каждом создании документации в конце вывода на консоль вы будете видеть краткий отчёт о продолжительности выполнения, например такой:
    'sphinx.ext.duration',
# для выполнения тестов документации
    'sphinx.ext.doctest',
# использовать строки документации в коде для создание документации
    'sphinx.ext.autodoc',
#  расширение автоматическое резюме.
    'sphinx.ext.autosummary',
]

templates_path = ['_templates']
exclude_patterns = []

language = 'ru'

# -- Options for HTML output -------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#options-for-html-output



html_theme = 'sphinx_nefertiti'
#html_theme = 'alabaster'

html_static_path = ['_static']
