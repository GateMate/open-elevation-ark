if [ ! -d "$(pwd)/data" ] 
then
    mkdir data
fi 

cd data
wget --input-file=../data.txt
