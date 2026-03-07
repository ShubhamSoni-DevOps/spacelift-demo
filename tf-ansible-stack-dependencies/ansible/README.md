In order to update the inventory.ini

chmod 600 /mnt/workspace/id_rsa

echo [all] > /mnt/workspace/inventory.ini

echo "Instances variable:"

echo "$instances"

for instance in $(echo "$instances" | tr -d '[]" ' | tr ',' ' '); do echo "$instance" >> /mnt/workspace/inventory.ini; done


Ansible project reference:
- https://spacelift.io/blog/using-terraform-and-ansible-together