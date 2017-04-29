# .emacs.d
my Emacs config


### Key bindings for Haskell:

Key binding                       | Description
----------------------------------|-----------------------------------------------------------
`F8`                              | jump to imports
`C-c C-.`                         | sort and align imports
`M-.`                             | jump to definition
`M-x haskell-mode-stylish-buffer` | format file
`C-c C-l`                         | load file in interpreter
`C-c C-z`                         | navigate errors in the file (`haskell-mode`, interactive)
`C-c C-n C-t`                     | show type of expression (`haskell-mode`, interactive)
`C-c C-n C-i`                     | show info of expression (interactive)
`C-c C-n C-c`                     | run `cabal build` (interactive)
`C-c C-n c`                       | run any other `cabal` command (interactive)
`M-x haskell-debug`               | start debugger
`M-n` or `Esc n`                  | go to next error or warning
`M-p` or `Esc p`                  | go to previous error or warning
`M-?` or `Esc ?`                  | show error or warning information
`C-c C-c`                         | change checking between GHC and HLint
`C-c C-t`                         | show type of expression (ghc-mod)
`C-c C-i`                         | show info of expression (ghc-mod)
`M-C-d` or `Esc C-d`              | show documentation of expression
`C-c C-h`                         | search using Hoogle
`M-C-i` or `Esc C-i`              | auto-completion
`M-C-m` or `Esc C-m`              | insert module import
`C-u M-t`                         | initial code generation
`M-t`                             | perform case split
`C-c <`                           | indent region shallower (`ghc-mod`)
`C-c >`                           | indent region deeper (`ghc-mod`)
wait                              | show completions (`company-ghc`)
`C-c M-n`                         | go to next hole
`C-c M-p`                         | go to previous hole
`C-c C-f`                         | refine hole
`C-c C-a`                         | automatically fill hole
`C-c C-r`                         | refactoring command prefix
`C-c C-r r`                       | rename refactoring
`M-a`                             | go to parent node (SHM)
`C-j`                             | newline and indent

also there are a few cabal dependencies:
```
cabal update
cabal install happy hasktags stylish-haskell present ghc-mod hlint hoogle structured-haskell-mode hindent
```