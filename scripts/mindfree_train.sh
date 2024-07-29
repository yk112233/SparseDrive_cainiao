source /opt/conda/etc/profile.d/conda.sh 
conda activate sparsedrive
cd /home/SparseDrive
mkdir data

ln -s /mnt/yeke/uniad/data/nuscenes /home/SparseDrive/data 
ln -s /mnt/yeke/sparsedrive/infos /home/SparseDrive/data 
ln -s /mnt/yeke/sparsedrive/kmeans /home/SparseDrive/data 
ln -s /mnt/yeke/sparsedrive/ckpt /home/SparseDrive/
ln -s /mnt/yeke/sparsedrive/baseline_8x3090/work_dirs /home/SparseDrive

sh scripts/train.sh
sh scripts/test.sh
sh scripts/visualize.sh
