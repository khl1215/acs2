mkdir /root/db
cp config.bson /root/db
cp config.metadata.json /root/db
cp permissions.bson /root/db
cp permissions.metadata.json /root/db
cp presets.bson /root/db
cp presets.metadata.json /root/db
cp provisions.bson /root/db
cp provisions.metadata.json /root/db
cp tasks.bson /root/db
cp tasks.metadata.json /root/db
cp users.bson /root/db
cp users.metadata.json /root/db
cp virtualParameters.bson /root/db
cp virtualParameters.metadata.json /root/db
cd 
sudo mongodump --db=genieacs --out genieacs-backup
mongorestore --db genieacs --drop /root/db
echo -e "${GREEN}============================================================================${NC}"
echo -e "${GREEN}=================== VIRTUAL PARAMETER BERHASIL DI INSTALL. =================${NC}"
echo -e "${GREEN}========== GenieACS UI akses port 3000. : http://$local_ip:3000 ============${NC}"
echo -e "${GREEN}=========================== DONE INSTALLATON ===============================${NC}"
echo -e "${GREEN}============================================================================${NC}"
