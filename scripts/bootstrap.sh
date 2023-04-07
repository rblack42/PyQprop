# install homebrew
if [[ -z "${HOMEBREW_PREFIX}" ]]; then
  echo "Installing homebrew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# install ansible
echo "homebrew is installed at ${HOMEBREW_PREFIX}"
echo "update/install ansible"
brew install ansible
