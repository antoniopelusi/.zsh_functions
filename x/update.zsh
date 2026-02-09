x_update() {
  echo -n "Do you want to update the system? [Y/n] "
  read choice

  case "$choice" in
    [Yy]* | "" )
      echo "Updating package lists..."
      if ! sudo apt update; then
        echo "Failed to update package lists."
        return 1
      fi

      echo "Upgrading installed packages..."
      if ! sudo apt upgrade -y; then
        echo "Failed to upgrade packages."
        return 1
      fi

      echo "Removing unused packages..."
      sudo apt autoremove -y
      sudo apt clean

      echo "Refreshing Snap packages..."
      sudo snap refresh

      echo "System update complete."
      ;;
    * )
      echo "Update canceled."
      ;;
  esac
}

x_update "$@"
