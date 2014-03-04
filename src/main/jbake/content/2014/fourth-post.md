title=Fourth Post
date=2014-03-04
type=post
tags=blog, java
status=published
~~~~~~

```
#!/usr/bin/env python
# -*- coding: utf-8 -*-
# by PiotrLegnica, Unlicense
# by Mariusz Fik (klipper)
# Works with Python 2.7 and 3.1
from __future__ import print_function, absolute_import
import sys, os, getpass, re, io
try:
    from xmlrpc import client as xmlrpclib
except ImportError:
    import xmlrpclib

CONFIG_FILES = ('wklej.rc', os.path.expanduser(os.path.join('~', '.wklejrc')))
SYNTAXES     = frozenset((
    'text', 'apache', 'actionscript', 'actionscript3', 'bash', 'bat',
    'bbcode', 'befuge', 'boo', 'brainfuck', 'c-objdump', 'c', 'cheetah',
    'clojure', 'common-lisp', 'control', 'cpp', 'cpp-objdump', 'csharp',
    'css+django', 'css+ruby', 'css+genshi', 'css+mako', 'css+myghty',
    'css+php', 'css+smarty', 'css', 'd-objdump', 'd', 'delphi', 'diff',
    'django', 'dpatch', 'dylan', 'erb', 'erlang', 'fortran', 'gas',
    'genshi', 'genshitext', 'gnuplot', 'groff', 'haskell', 'html+cheetah',
    'html+django', 'html+genshi', 'html+mako', 'html+myghty', 'html+php',
    'html+smarty', 'html', 'ini', 'io', 'irc', 'java', 'js+cheetah',
    'js+django', 'js+ruby', 'js+genshi', 'js+mako', 'js+myghty', 'js+php',
    'js+smarty', 'js', 'jsp', 'literate-haskell', 'lighttpd', 'llvm',
    'logtalk', 'lua', 'make', 'basemake', 'mako', 'matlab', 'matlabsession',
    'minid', 'moocode', 'mupad', 'myghty', 'mysql', 'nasm', 'nginx', 'numpy',
    'objdump', 'objective-c', 'ocaml', 'perl', 'php', 'pot', 'pov', 'py3tb',
    'pycon', 'pytb', 'python', 'python3', 'raw', 'ruby', 'rbcon', 'redcode',
    'rhtml', 'restructuredtext', 'scala', 'scheme', 'smalltalk', 'smarty',
    'sourceslist', 'splus', 'sql', 'sqlite3', 'squidconf', 'tcl', 'tcsh',
    'latex', 'trac-wiki', 'vbnet', 'vim', 'xml+cheetah', 'xml+django',
    'xml+ruby', 'xml+mako', 'xml+myghty', 'xml+php', 'xml+smarty', 'xml',
    'xslt', 'yaml'
))

DEFAULTS = {
    'key': None, 'syntax': 'text', 'copy': 'all', 'visibility': 'private',
    'test': False, 'verbose': False, 'strip': True, 'encoding': 'utf-8',
}

try:
    DEFAULTS['author'] = getpass.getuser()
except:
    DEFAULTS['author'] = 'anonymous'

CONTROL_SEQUENCE = re.compile(chr(27) + r'\[(?:\d+;)*(?:;?\d+)?[A-HJKSTfmnsu]')
CONTROL_CODE     = re.compile('[\x00-\x09\x0b-\x1a\x1c-\x1f]')

def _clean(content, csStrip):
    # strip control codes (except ESC and newlines)
    content = CONTROL_CODE.sub('', content)
    
    if csStrip:
        # try to strip terminal control sequences
        content = CONTROL_SEQUENCE.sub('', content)
    
    # strip remaining ESC codes
    return content.replace('\x1B', '')

def post(content, syntax = DEFAULTS['syntax'], private = True, key = None, author = DEFAULTS['author'], csStrip = True):
    if syntax not in SYNTAXES:
        raise ValueError('Invalid syntax: {0}'.format(syntax))
    
    content = _clean(content, csStrip)
    method  = 'dodaj_{0}wpis'.format('prywatny_' if private else '')
    args    = [content, syntax]
    
    if key is not None:
        method = 'auth_{0}'.format(method)
        args.append(key)
    else:
        args.append(author)
    
    rpc = xmlrpclib.ServerProxy('http://wklej.org/xmlrpc/')
    return getattr(rpc, method)(*args)

def main():
    options, args = _optParser().parse_args()
    links = []
    
    if len(args) == 0:
        args = ('-',)
    
    for idx, arg in enumerate(args):
        parts      = arg.split(':', 2)
        visibility = options.visibility
        syntax     = options.syntax
        filename   = parts[-1]
        
        if len(parts) == 3:
            if parts[0]:
                visibility = parts[0]
            if parts[1]:
                syntax = parts[1]
        elif len(parts) == 2:
            if parts[0]:
                syntax = parts[0]
        
        if visibility not in ('public', 'private'):
            print('Invalid visibility in file {0:d}: {1}'.format(idx, arg), file = sys.stderr)
            continue
        
        if syntax not in SYNTAXES:
            print('Invalid syntax in file {0:d}: {1}'.format(idx, arg), file = sys.stderr)
            continue
        
        if filename != '-':
            filename = os.path.realpath(filename)
            if not os.path.exists(filename):
                print(
                    'File does not exist ({0:d}): {1} (expanded to {2})'.format(idx, arg, filename),
                    file = sys.stderr
                )
                continue
        else:
            filename = '<stdin>'
        
        try:
            stream = sys.stdin.fileno() if filename == '<stdin>' else filename
            with io.open(stream, 'r', encoding = options.encoding) as fp:
                content = fp.read().replace('\t', ' ' * 4)
        except IOError as e:
            print('Failed to read {0}: {1}'.format(filename, e), file = sys.stderr)
            continue
        
        result = post(content, syntax, visibility == 'private', options.key, options.author, options.strip)
        link   = 'http://wklej.org{0}'.format(result)
        
        links.append(link)
        print('{0} ({1}): {2}'.format(filename, syntax, link))
    
    if options.copy == 'first':
        _clipboard(links[0])
    elif options.copy == 'all':
        _clipboard('\r\n'.join(links))
    
    return 0

if sys.platform == 'win32':
    def _clipboard(link):
        try:
            import win32api, win32clipboard as clip
        except ImportError:
            print('Cannot use clipboard: pywin32 required', file = sys.stderr)
            return
        
        try:
            clip.OpenClipboard()
        except win32api.error:
            print('Clipboard open failed', file = sys.stderr)
            return
        
        try:
            clip.EmptyClipboard()
            clip.SetClipboardText(link, clip.CF_TEXT)
            clip.SetClipboardText(link, clip.CF_UNICODETEXT)
        except win32api.error:
            print('Could not copy links', file = sys.stderr)
        finally:
            clip.CloseClipboard()
else:
    def _clipboard(link):
        import subprocess
        try:
            klipper = ['qdbus', 'org.kde.klipper', '/klipper', 'setClipboardContents', link]
            qdbus = subprocess.Popen(klipper, env = os.environ, stdin = subprocess.PIPE)
            qdbus.communicate()
        except (OSError, IOError):
            print('Could not copy links', file = sys.stderr)

def _usage(configFiles):
    import textwrap
    
    syntaxes = textwrap.fill(', '.join(sorted(SYNTAXES)), width = 64, subsequent_indent = ' ' * 4)
    usage = '''\
        Usage: wklej [options] [[[visibility:]syntax:]file [...]]
            - visibility may be public or private
            - syntax may be anything from below list
            - file or - for stdin, syntax:file, visibility:syntax:file, visibility::file
            - if filename has colons, use last form (::file if you want defaults)
            - stdin with default settings used if no files are given
        
        Available syntaxes:
            {0}
        Config files read:
            {1}\
    '''
    
    return textwrap.dedent(usage).format(syntaxes, ', '.join(configFiles))

def _optParser():
    import optparse
    
    try:
        import configparser
    except ImportError:
        import ConfigParser as configparser
    
    config      = configparser.RawConfigParser()
    configFiles = config.read(CONFIG_FILES)
    parser      = optparse.OptionParser(usage = _usage(configFiles))
    
    parser.set_defaults(**dict(DEFAULTS, **config.defaults()))
    
    options = (
        [
            '-s', '--syntax', 'Default syntax [%default]',
            { 'choices': sorted(SYNTAXES) }
        ],
        [
            '-v', '--visibility', 'Default visibility [%default]',
            { 'choices': ('private', 'public') }
        ],
        [
            '-a', '--author', 'Author for all entries [%default]',
            {}
        ],
        [
            '-k', '--key', 'Use KEY for authorisation',
            {}
        ],
        [
            '-e', '--encoding', 'Input encoding [%default]',
            {}
        ],
        [
            '-c', '--copy', 'What to copy to clipboard after sending (first, all, none) [%default]',
            { 'choices': ('first', 'all', 'none') }
        ],
        [
            '-n', '--no-strip', 'Do not try to strip entire ANSI terminal escape sequences (experimental)',
            { 'dest': 'strip', 'action': 'store_false' },
        ],
    )
    
    for option in options:
        kwargs = option.pop(-1)
        kwargs['help'] = option.pop(-1)
        
        parser.add_option(*option, **kwargs)
    
    return parser

if __name__ == '__main__':
    sys.exit(main())
```