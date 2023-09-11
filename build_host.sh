#!/bin/bash

git clone -b feature/3.0.x-eldir https://github.com/omega8cc/eldir.git eldir
git clone -b feature/3.1.x-hosting https://github.com/omega8cc/hosting.git hosting
git clone -b 7.x-3.x https://github.com/omega8cc/aegir_objects.git aegir_objects
git clone -b 7.x-3.x https://github.com/omega8cc/hosting_civicrm.git hosting_civicrm
git clone -b 7.x-3.x https://github.com/omega8cc/hosting_deploy.git hosting_deploy
git clone -b 7.x-3.x https://github.com/omega8cc/hosting_git.git hosting_git
git clone -b 7.x-3.x https://github.com/omega8cc/hosting_le.git hosting_le
git clone -b 7.x-3.x https://github.com/omega8cc/hosting_remote_import.git hosting_remote_import
git clone -b 7.x-3.x https://github.com/omega8cc/hosting_site_backup_manager.git hosting_site_backup_manager
git clone -b 7.x-3.x https://github.com/omega8cc/hosting_tasks_extra.git hosting_tasks_extra
wget https://ftp.drupal.org/files/projects/admin_menu-7.x-3.0-rc6.tar.gz
tar xvf admin_menu-7.x-3.0-rc6.tar.gz
wget https://ftp.drupal.org/files/projects/betterlogin-7.x-1.5.tar.gz
tar xvf betterlogin-7.x-1.5.tar.gz
wget https://ftp.drupal.org/files/projects/ctools-7.x-1.21.tar.gz
tar xvf ctools-7.x-1.21.tar.gz
wget https://ftp.drupal.org/files/projects/entity-7.x-1.9.tar.gz
tar xvf entity-7.x-1.9.tar.gz
wget https://ftp.drupal.org/files/projects/module_filter-7.x-2.2.tar.gz
tar xvf module_filter-7.x-2.2.tar.gz
wget https://ftp.drupal.org/files/projects/openidadmin-7.x-1.0.tar.gz
tar xvf openidadmin-7.x-1.0.tar.gz
wget https://ftp.drupal.org/files/projects/overlay_paths-7.x-1.3.tar.gz
tar xvf overlay_paths-7.x-1.3.tar.gz
wget https://ftp.drupal.org/files/projects/r4032login-7.x-1.8.tar.gz
tar xvf r4032login-7.x-1.8.tar.gz
wget https://ftp.drupal.org/files/projects/views-7.x-3.29.tar.gz
tar xvf views-7.x-3.29.tar.gz
wget https://ftp.drupal.org/files/projects/views_bulk_operations-7.x-3.7.tar.gz
tar xvf views_bulk_operations-7.x-3.7.tar.gz
wget https://ftp.drupal.org/files/projects/libraries-7.x-2.5.tar.gz
tar xvf libraries-7.x-2.5.tar.gz
wget https://ftp.drupal.org/files/projects/tfa-7.x-2.1.tar.gz
tar xvf tfa-7.x-2.1.tar.gz
wget https://ftp.drupal.org/files/projects/tfa_basic-7.x-1.1.tar.gz
tar xvf tfa_basic-7.x-1.1.tar.gz
cd tfa_basic
wget https://www.drupal.org/files/issues/use_libraries_module-2807953-8.patch
patch -p1 < use_libraries_module-2807953-8.patch
cd ..

wget https://ftp.drupal.org/files/projects/timeago-7.x-2.3.tar.gz
tar xvf timeago-7.x-2.3.tar.gz

wget https://ftp.drupal.org/files/projects/features_extra-7.x-1.0.tar.gz
tar xvf features_extra-7.x-1.0.tar.gz

wget https://ftp.drupal.org/files/projects/features-7.x-2.14.tar.gz
tar xvf features-7.x-2.14.tar.gz

wget https://ftp.drupal.org/files/projects/idna_convert-7.x-1.0.tar.gz
tar xvf idna_convert-7.x-1.0.tar.gz

wget https://ftp.drupal.org/files/projects/revision_deletion-7.x-1.3.tar.gz
tar xvf revision_deletion-7.x-1.3.tar.gz

wget  https://ftp.drupal.org/files/projects/strongarm-7.x-2.0.tar.gz
tar xvf strongarm-7.x-2.0.tar.gz

wget https://ftp.drupal.org/files/projects/userprotect-7.x-1.3.tar.gz
tar xvf userprotect-7.x-1.3.tar.gz

# BOA Custom Contrib

git clone -b 7.x-3.x https://github.com/omega8cc/hosting_custom_settings.git hosting_custom_settings
