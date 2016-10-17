########################################
# @author: Abdoulaye Bah
########################################

# Retrieving a Document
# We execute an HTTP GET request and specify the address
# of the document- the index, type, and ID.
# Using those three pieces of information, we can 
# return the original JSON document

GET /megacorp/employee/1  # the response contains some metadata
						  # about the document


GET /megacorp/employee/2

GET /megacorp/employee/3