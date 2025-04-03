#!/bin/bash


echo "start to download " 


toDownload() {
echo "we are in the download folder"  

if ! command -v unzip &>/dev/null; then 
	 echo "Unzip is not installed. Installing..."
         sudo apt update && sudo apt install -y unzip 

fi  

if ! curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"; then

	  echo "Failed to download AWS CLI."
        return 1

fi


unzip awscliv2.zip
sudo ./aws/install


echo "Aws CLI install successfully !" 

}


to_Update() {
echo "we are in the update folder " 

 
   if ! curl -f "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"; then
        echo "Failed to download AWS CLI for update."
        return 1
    fi


unzip awscliv2.zip
sudo ./aws/install --bin-dir /usr/local/bin --install-dir /usr/local/aws-cli --update
 

} 
echo "we are going to call download function " 
if ! toDownload; then 
       echo "we are failing to download " 
         exit 1 
fi        

echo "all is clear so now we are going to call the update function " 
if ! to_Update; then 
	echo "we are failing in the update " 
	exit 1 




fi 


echo "AWS CLI installation and update completed successfully!"






