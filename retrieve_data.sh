if [ ! -d "$(pwd)/data" ] 
then
    mkdir data
    cd data
    wget --input-file=../data.txt
fi 
