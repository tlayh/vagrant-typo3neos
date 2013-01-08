#
# Cookbook:: typo3-neos
# Recipe:: basic.rb
#
# Copyright 2013, Thomas Layh
#
# Version 0.1
#
# Installing the base packages for a minimal system setup


packagespurge=[
    "apparmor",
    "apparmor-utils",
    "libapparmor-perl",
    "libapparmor1",
    "ubuntu-minimal",
    "command-not-found",
    "command-not-found-data",
    "landscape-common"
]

packages=[
    "kbd",
    "console-data",
    "unicode-data",
    "console-common",
    "language-pack-en-base",
    "bzip2",
    "less",
    "man-db",
    "info",
    "vim",
    "sudo",
    "lvm2",
    "dmsetup",
    "mbr",
    "attr",
    "quota",
    "rsync",
    "sysstat",
    "cramfsprogs",
    "dash",
    "kernel-package",
    "sysfsutils",
    "module-init-tools",
    "file",
    "debconf-utils",
    "perl",
    "perl-modules",
    "ssh",
    "openssh-client",
    "openssh-server",
    "curl",
    "mcrypt",
    "php5-mcrypt"
]

case node[:platform]
  when "debian","ubuntu"
    packagespurge.each do |pkg|
      package pkg do
        action :remove
      end
    end
    packages.each do |pkg|
      package pkg do
        action :upgrade
      end
    end
end