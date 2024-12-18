# Sysadmin after dark

Install the LBreakoutHD game on your Fedora laptop with Ansible!

![image](https://www.redhat.com/rhdc/managed-files/styles/wysiwyg_full_width/private/sysadmin/2021-08/intro_screen.png.webp?itok=FqHZ625y)

Originally based on https://www.redhat.com/en/blog/install-games-ansible, this playbook is 
an update to fit the Ansible Core package version 2.16.2 and match the linting requirements

## How to run

Just type:

    ansible-playbook -i inventory lbreakout.yml

If the playbook succeeds, try this:

    lbreakouthd

## How to uninstall

Set the variable `make_action` to `uninstall`. Example:

    ansible-playbook -K lbreakout.yaml -e make_action=uninstall

## Supported platforms

Fedora 40 and downstream CentOS Stream, Red Hat should work fine. 

## Credits

Original post by **Ricardo Gerardi**: https://www.redhat.com/en/authors/rgerardi
