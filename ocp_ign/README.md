# Role to create ignition files

The role is designed to automate common "day one" OpenShift tasks. 

## Background

The role peformed following activities

1. Create installation directory  
2. Copy install confing to the newly created directory 
3. Create Manifest files  
4. Overwrite cluster scheduler  
5. Copy custom machine config manifest files  
6. Create ignition files  
7. Copy ignition files in web server folder  

# Variabled used in the playbook
```
environment_name:  ocpti, ocp4dvs, ocp4dvk, si-ocp4resilience-stc, si-ocp4resilience-ndc, si-ocp4live-stc, si-ocp4live-ndc
base_install_folder_path: /home/terraform/ocp4/install. Base installation folder
ign_remote_install_path: live-stc/vmware-installation. Path to generate ignition files.
additional_machine_config_manifests: live-stc/machineconfigmanifests. Path to get addition configs such as chrony and disk partition manifests.
install_config_path: ../../../manifests/ocp4/live-stc/vmware-install-config-stc.yaml
domain_prefix: admin
webserver_user: terraform
webserver_group: terraform
webserver_folder_path: /var/www/ign
add_bootstrap_chrony: true or false
chrony_config: ../../../manifests/ocp4/live-stc/chrony_config.txt
add_bootstrap_static_routes: true or false
bootstrap_static_routes:
  - static_route: 172.28.142.0/23 172.28.140.1
  - static_route: 172.28.188.92/32 172.28.140.1
```


## Running the Playbooks
```
ansible-playbook -i inventories/dvs playbooks/ocp4/pre-installation.yml
```

## Author

Adeel Shafqat
