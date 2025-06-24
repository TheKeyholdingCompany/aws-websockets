mkdir -p lambda_code/python
pip3 install redis async_timeout -t lambda_code/python
cd lambda_code
zip -r redis_layer.zip python
cd ..
