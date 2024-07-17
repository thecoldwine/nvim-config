# nvim config

This is my nvim config includes the following plugins:

1. packer
2. nord theme
3. harpoon
4. telescope
5. tree-sitter
6. git-fugitive
7. undotree

In order to work with signed commits, one needs to put the following script in any location that precedes gpg in the PATH.

```bash
#!/bin/sh

if [ -n "$FUGITIVE" ]; then
  set -- --pinentry-mode loopback "$@"
fi
exec /opt/homebrew/bin/gpg "$@"
```

