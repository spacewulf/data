curl -sS https://starship.rs/install.sh | sh
echo 'eval "$(starship init bash)"' >> ~/.bashrc
mkdir ~/.config
cd ..
cp configs/starship.toml ~/.config/starship.toml
