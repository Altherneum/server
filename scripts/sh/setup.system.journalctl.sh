# Set logs to persistent & restart service
sudo mkdir -p /var/log/journal
sudo sed -i 's/#Storage=auto/Storage=persistent/' /etc/systemd/journald.conf
sudo systemctl restart systemd-journald
sudo journalctl --flush

# Set this to the file to expand or reduce its logs size
# sudo mkdir -p /etc/systemd/journald.conf.d
# sudo tee /etc/systemd/journald.conf.d/retention.conf << 'EOF'
# [Journal]
# Storage=persistent
# SystemMaxUse=5G
# MaxRetentionSec=30day
# EOF
# 
# sudo systemctl restart systemd-journald