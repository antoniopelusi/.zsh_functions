# Update system packages, Flatpak apps and firmware
printf "Do you want to update the system? [Y/n] "
read choice
case "$choice" in
  [Yy]* | "" )
    printf "Updating and upgrading installed packages...\n"
    if ! sudo dnf -y update --refresh; then
      printf "Failed to upgrade packages.\n"
      return 1
    fi
    printf "Removing unused packages...\n"
    sudo dnf -y autoremove
    printf "Cleaning package cache...\n"
    sudo dnf -y clean all
    printf "Updating Flatpak applications...\n"
    flatpak -y update
    printf "Removing unused Flatpak runtimes...\n"
    flatpak -y uninstall --unused
    printf "Updating firmware...\n"
    sudo fwupdmgr refresh --force
    sudo fwupdmgr -y update
    printf "System update complete.\n"
    ;;
  * )
    printf "Update canceled.\n"
    ;;
esac
