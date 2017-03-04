2. What are some common HTTP status codes?
* Status codes are organized as such: 
	* 1XX: Informational
	* 2XX: Success
	* 3XX: Redirection
	* 4XX: Client Error
	* 5XX: Server Error
* 404: Not Found. This code means the server has not found a match for the requested Uniform Resource Identifier (URI). A URI is a string of characters used to connect to a resource (website) online. As a result, a 404 comes up when the string entered by the user (ex. www.google.com) is unable to reach a website or source on the network.

* 200: OK. Hopefully the most common code one encounters. It's basically the default response for an HTTP request and it means there was no trouble connecting to and accessing the resource over the network. 

*304: Not Modified. I saw this one floating around. The client has performed a Get request, access is allowed but the document is not modified. 

