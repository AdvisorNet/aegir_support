#!/bin/bash
urlDev="http://${_USE_MIR}/dev"
urlHmr="http://${_USE_MIR}/versions/head/boa/aegir"

crlGet="-L --max-redirs 10 -k -s --retry 10 --retry-delay 5 -A iCab"
gCb="git clone --branch"
gitHub="https://github.com/omega8cc"
gitLab="https://gitlab.com/omega8cc"
_USE_MIR="files.aegir.cc"
_ROOT="/var/aegir"
rootDrush="${_ROOT}/.drush"
if [ ! -d "${rootDrush}" ]; then
  mkdir -p ${rootDrush}
fi
makeLocal="/opt/tmp/make_local"
if [ ! -d "${makeLocal}" ]; then
  mkdir -p ${makeLocal}
fi
# Get Drush

if [ ! -d "${_ROOT}" ]; then
  cd ${_ROOT}; ${gCb} 8-boa-micro ${gitHub}/drush.git
fi
# Provision
cd ${rootDrush}; ${gCb} 5.x-head ${gitHub}/provision.git
# Dependenciesx
cd ${makeLocal}
# Eldir
${gCb} 5.x-head ${gitHub}/eldir.git
# Hostmaster
${gCb} 5.x-head ${gitHub}/hostmaster.git
# Hosting
${gCb} 5.x-head ${gitHub}/hosting.git
#git clone -b 5.x-head git@github.com:AdvisorNet/hosting.git hosting
# Aegir Objects
${gCb} 5.x-head ${gitHub}/aegir_objects.git
# Hosting Civicrm
${gCb} 5.x-head ${gitHub}/hosting_civicrm.git
# Hosting Deploy - git@github.com:AdvisorNet/hosting_deploy.git
${gCb} 5.x-head ${gitHub}/hosting_deploy.git
# Hosting Git
${gCb} 5.x-head ${gitHub}/hosting_git.git
# Hosting LE
${gCb} 5.x-head ${gitHub}/hosting_le.git
# Hosting Remote Import
${gCb} 5.x-head ${gitHub}/hosting_remote_import.git
# Hosting Site Backup Manager
${gCb} 5.x-head ${gitHub}/hosting_site_backup_manager.git
# Hosting Task Extra
${gCb} 5.x-head ${gitHub}/hosting_tasks_extra.git
# Security Review
${gCb} 7.x-1.x ${gitHub}/security_review.git
# Hosting Custom Settings
${gCb} 5.x-head ${gitHub}/hosting_custom_settings.git

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

wget https://ftp.drupal.org/files/projects/drupal-7.98.tar.gz
tar xvf drupal-7.98.tar.gz
mv drupal-7.98 drupal

rm -rf *.tar.gz