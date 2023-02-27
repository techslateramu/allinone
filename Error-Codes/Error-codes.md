![TechSlate](../global/images/ts.png)

# Introduction 

## *This page contains all the HTTP Status Codes – 400 Series*

![DevOps](images/error.jpg)
<pre>


</pre>   


# **Bad Request**

![DevOps](images/400.png)

- ## **The request could not be understood by the server due to malformed syntax. The client SHOULD NOT repeat the request without modifications.**



# **Unauthorized**

![DevOps](images/401.png)


- ## **401 Unauthorized is returned when a web server requests credentials for a secured document .The client may repeat the request with a suitable authorization header field. If the request already included Authorization credentials, then the 401 response indicates that authorization has been refused for those credentials.**


# **Payment Required**

![DevOps](images/402.png)

- ## **The HTTP 402 Payment Required is a nonstandard response status code that is reserved for future use.** 

- ## **Sometimes, this status code indicates that the request cannot be processed until the client makes a payment. However, no standard use convention exists and different entities use it in different contexts.** 


# **Forbidden**

![DevOps](images/403.png)

- ## **403 Forbidden is usually one of four things:**

1. ## **Directory listings are not permitted**

2. ## **Currently authenticated user does not have sufficient permissions**

3. ## **The web-server process has inadequate permissions**

4. ## **Requesting address has been banned**


# **Not Found**

![DevOps](images/404.png)

- ## **404 Not Found means the web-server could not find the requested resource. When encountering a 404 error, a few things can be done:**

1. ## **Check spelling of host, domain, path, and document.**

2. ## **Check case of file and path. Linux and Unix web-servers (unless configured differently) usually distinquish case, with tradition of using all lowercase for each.**

3. ## **Use Google to find an alternative URL to the resource**

4. ## **Try getting a cached page from google.**



# **Method Not allowed**

![DevOps](images/405.png)

- ## **A 405 Method Not Allowed is presented when attempting a request method that is not permitted by the web server.**


# **Not Acceptable**

![DevOps](images/406.png)

- ## **The HTTP 406 Not Acceptable client error response code indicates that the server cannot produce a response matching the list of acceptable values defined in the request's proactive content negotiation headers, and that the server is unwilling to supply a default representation.**


# **Request Timeout**

![DevOps](images/408.png)

- ## **408 Request Timeout, which simply means that the request sent from the client to the web server took more time than the web server allows for. As a result, the browser receives the HTTP 408 message instead of the actual response. Of course, this may be due to problems with your internet connection, but it cannot be ruled out that the timeout is the result of an overload or incorrect configuration of the web server.** 
