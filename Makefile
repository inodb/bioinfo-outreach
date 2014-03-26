FTP_HOST=ftp.ino.pm
FTP_USER=ino.pm
FTP_TARGET_DIR=outreach

ftp_upload:
	lftp ftp://$(FTP_USER)@$(FTP_HOST) -e "mirror -R --exclude '\.git.*' . $(FTP_TARGET_DIR) ; quit"

.PHONY: ftp_upload
