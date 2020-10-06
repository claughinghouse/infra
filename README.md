# WIP
## Assumptions

Add a user a in Ubuntu VM

```shell
adduser
```

Copy the authorized key into the folder via curl from GitHub or copy and paste.

Assumes Ubuntu 20.04 VM with Ansible user created and ssh key put into authorized_keys

Assumes passwordless `sudo`. Add `$ansible_username ALL=(ALL) NOPASSWD:ALL` to /etc/sudoers

Simulate failure for debugging.

```console
- name: debug fail
  fail:
```
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
