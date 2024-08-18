from setuptools import setup, find_namespace_packages
import os.path
import re


# reading package's version (same way sqlalchemy does)
with open(
    os.path.join(os.path.dirname(__file__), 'foo/core', '__init__.py')
) as v_file:
    package_version = \
        re.compile('.*__version__ = \'(.*?)\'', re.S)\
        .match(v_file.read())\
        .group(1)


dependencies = [
]


setup(
    name='foo',
    version=package_version,
    author='Vahid Mardani',
    author_email='vahid.mardani@gmail.com',
    install_requires=dependencies,
    # packages=['foo'],
    packages=find_namespace_packages(
        where='.',
        include=['foo'],
        exclude=['tests'],
    )
)
