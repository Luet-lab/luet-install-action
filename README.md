# luet-install-action

This Github action provide the ability to install packages using `luet` from your repositories with Github actions:


```yaml
- name: Install something
  uses: Luet-lab/luet-install-action@v1
  with:
    repository: "your-repository"
    packages: "list-of-packages"
```
