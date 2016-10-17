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


# Search Lite - Simple search
# Search for all employees, with this request
# by default a search will return the top 10 results
GET /megacorp/employee/_search


# Search for employees who have "Bah" in their last name
# we will use a lightweight search method (query-string)
GET /megacorp/employee/_search?q=last_name:Bah


# Search with Query DSL (Domain Specific language)
# DSL allows us to build much more complicated, robust queries
# DSL is specified using a JSON request body. 
# Note: We are no longer using query-string parameters
# but instead a request body

GET /megacorp/employee/_search
{
	"query" : {
		"match" : {
			"last_name" : "Bah"
		}
	}
}