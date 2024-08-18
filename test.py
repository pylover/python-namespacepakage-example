#! /home/vahid/.virtualenvs/foo/bin/python3


try:
    from foo.core import FooCore
    print(FooCore)
except ImportError:
    print('Cannot import FooCore from foo.core module')


try:
    from foo.ext.bar import FooBar
    print(FooBar)
except ImportError:
    print('Cannot import FooBar from foo.ext.bar module')


try:
    from foo.ext.baz import FooBaz
    print(FooBaz)
except ImportError:
    print('Cannot import FooBaz from foo.ext.baz module')
