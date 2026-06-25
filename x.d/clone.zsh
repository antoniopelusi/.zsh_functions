# Clone a GitHub repository into Projects folder
if [[ -z "$1" ]]; then
  printf "Usage: x clone <repository>\n"
  return 1
fi
git clone "git@github.com:antoniopelusi/$1.git" ~/Projects/"$1"
