OUTPUT_DIR="csv_data"
echo "creating a folder csv_data"
mkdir -p "${OUTPUT_DIR}"
for i in $(seq -f "2010-12-%02g" 1 31); do
        base_link="https://github.com/databricks/Spark-The-Definitive-Guide/tree/master/data/retail-data/by-day"
        echo "Downloading ${i}.csv.."
        curl -o "${OUTPUT_DIR}/${i}.csv" ${base_link}/${i}.csv 

done
echo "Download Completed"

