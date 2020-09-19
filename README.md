# WIP
## Assumptions
Assumes LXC Container with Ansible user created and ssh key put into authorized_keys

Assumes passwordless `sudo`. Add `$ansible_username ALL=(ALL) NOPASSWD: ALL` to /etc/sudoers
# WIP






<!-- ### Change ansible password
Drop this into a terminal session:
```python
python -c "from passlib.hash import sha512_crypt; import getpass; print(sha512_crypt.using(rounds=5000).hash(getpass.getpass()))"
```

### Decrypt Vault

Make sure the .vault-password file is in the root directory

```console
make decrypt
``` -->
