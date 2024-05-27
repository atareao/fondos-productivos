#set page(
  "presentation-16-9",
  fill: black,
  margin: 0.5cm)
#set text(size: 12pt, fill: white)
= Gestión de paquetes en Linux
  #columns(3, gutter: 12pt)[
    == Instalar desde repositorio
    - `snap install <paquete>`
    - `flatpak install [remote] <paquete>`
    - `apt install <paquete>`
    - `yum install <paquete>`
    - `dnf install <paquete>`
    - `pkg install <paquete>`
    - `apt-get install <paquete>`
    - `pacman -S <paquete>`
    - `pip install <paquete>`
    - `zypper install <paquete>`
    == Instalar desde archivo
    - `flatpak install <paquete.flatpakref>`
    - `dpkg -i [package.deb]`
    - `yum install [package.rpm]`
    - `dnf install [package.rpm]`
    - `pkg add [package.txz]`
    - `pacman -U [package.tar.gz]`
    - `pip install [/path/to/package]`
    == Desinstalar
    - `snap remove [packageName]`
    - `apt-get remove [packageName]`
    - `apt remove [packageName]`
    - `dnf erase [packageName]`
    - `pkg delete [packageName]`
    - `pacman -R [packageName]`
    - `pip uninstall [packageName]`
    - `zypper rm [packageName]`
    == Buscar un paquete
    - `snap find [query]`
    - `flatpak search [query]`
    - `apt-cache search [query]`
    - `apt search [query]`
    - `yum search [query]`
    - `dnf search [query]`
    - `pkg search [query]`
    - `pacman -Ss [query]`
    - `pip search [query]`
    - `zypper search [packageName]`
    == Ver información de un paquete
    - `snap info [packageName]`
    - `apt-cache show [packageName]`
    - `apt show [packageName]`
    - `dpkg -s [packageName]`
    - `yum info [packageName]`
    - `dnf info [packageName]`
    - `pkg info [packageName]`
    - `pacman -Si [packageName]`
    - `pip show [packageName]`
    == Actualizar la lista de paquetes
    - `apt-get update`
    - `apt update`
    - `yum check-update`
    - `dnf check-update`
    - `pkg update`
    - `pacman -S`
    - `zypper refresh`
    == Actualizar los paquetes instalados
    - `snap refresh`
    - `flatpak update`
    - `apt-get upgrade`
    - `apt upgrade`
    - `yum update`
    - `dnf upgrade`
    - `pkg upgrade`
    - `pacman -Syu`
    - `pip install [packageName] --upgrade`
    - `zypper update`
    == Añadir un repositorio
    - `add-apt-repository ppa:[userName]/[ppaName]`
    - `add-apt-repository deb [url] [derivative]`
    - `yum-config-manager --add-repo [url]`
    - `dnf config-manager --add-repo [url]`
    - `zypper addrepo [url] [alias]`
  ]