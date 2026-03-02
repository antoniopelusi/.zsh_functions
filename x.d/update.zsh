echo -n "Do you want to update the system? [Y/n] "
read choice
case "$choice" in
  [Yy]* | "" )
    echo "Updating and upgrading installed packages..."
    if ! sudo dnf -y update --refresh; then
      echo "Failed to upgrade packages."
      return 1
    fi
    echo "Removing unused packages..."
    sudo dnf -y autoremove
    echo "Cleaning package cache..."
    sudo dnf clean all
    echo "System update complete."
    ;;
  * )
    echo "Update canceled."
    ;;
esac
