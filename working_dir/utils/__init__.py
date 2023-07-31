from typing import Any
import pyspark
from pyspark.sql import SparkSession

class Session:
    
    def __init__(self, app_name: str) -> None:
        self._session =  SparkSession  \
                            .builder    \
                            .appName(app_name)    \
                            .getOrCreate()
    
    @property
    def session(self) -> SparkSession:
        return self._session