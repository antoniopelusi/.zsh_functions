if [[ -z "$1" ]]; then
  echo "Usage: x clone <repository>"
  return 1
fi
git clone "git@github.com:antoniopelusi/$1.git" ~/Projects/"$1"
