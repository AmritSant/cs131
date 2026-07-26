import sys
from pyspark.sql import SparkSession

if __name__ == "__main__":
    spark = SparkSession.builder.appName("SparkDemo").getOrCreate()
    input_uri = sys.argv[1]
    df = spark.read.csv(input_uri, header=True, inferSchema=True)
    df.show()
    print("Total rows:", df.count())
    spark.stop()
