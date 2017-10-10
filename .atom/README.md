### To save all installed packages into file:
```bash
apm list --installed --bare > packages.list
```
### To load those packages from file:
```
apm install --packages-file packages.list
```
