# Set logs to persistent & restart service
sudo mkdir -p /var/log/journal
sudo sed -i 's/#Storage=auto/Storage=persistent/' /etc/systemd/journald.conf
sudo systemctl restart systemd-journald
sudo journalctl --flush