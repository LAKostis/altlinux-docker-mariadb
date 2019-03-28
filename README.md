# altlinux-mariadb-docker
MariaDB docker image based on ALTLinux Sisyphus

This is a ALTLinux specific adaptation of original Docker mysql https://hub.docker.com/_/mysql but with some cleanups and features:
- chroot supported
- uses mysqladmin instead of hardcoded sql
- supports custom data imports (as it does original docker image).
