_push() {
    echo -n "Do you want to push your changes? [Y/n] "
    read choice
    case "$choice" in
        [Yy]* | "" )
            git add .
            git commit -m "update"
            git push
            ;;
        * )
            echo "Push canceled."
            ;;
    esac
}
