rm -rf dataset_info
source ./dataset_info.sh
rm coverage.json
rm dataset_info.json
rm paper_table.json

python dataset_info.py
python tables_dump.py

