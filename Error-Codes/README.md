![TechSlate](../global/images/ts.png)

# Introduction 

## *This page contains all the HTTP response status codes*

![code](images/HTTP-Status-Code.jpeg)

## **What is HTTP Status Code?**

### When a browser sends a request to a server, the server responds with an HTTP status code. This HTTP code is not seen to users if the server can restore the content requested by the browser and there is no error. In the event that something goes wrong, the server will return an HTTP status code indicating that something isn't operating properly.

We can determine the type of error that has happened based on the status code provided by the server.

![code](images/httpcode.png)

- ### The Browser sends requests to the SERVER as a CLIENT. The server then responds to this request with either a web page (based on files and databases) or a code if the website is unavailable for some reason. The servers follow standard protocols that control these codes.

- ### 404-Not Found and 502-Bad Gateway errors are two common codes that users encounter in their day-to-day browsing. There are numerous server status codes apart from this.

<pre>


</pre>   


# ```HTTP 100``` 

## **Continue**

- ### **The HTTP 100 Continue informational status response code indicates that everything so far is OK and that the client should continue with the request or ignore it if it is already finished.**


# ```HTTP 101``` 

## **Switching Protocols**

- ### **The HTTP 101 Switching Protocols response code indicates a protocol to which the server switches. The protocol is specified in the Upgrade request header received from a client..**


# ```HTTP 102``` 

## **Processing**

- ### **The HTTP 102 Processing informational status response code indicates to client that a full request has been received and the server is working on it.**

- **This status code is only sent if the server expects the request to take significant time. It tells the client that your request is not dead yet.**


# ```HTTP 103``` 

## **Early Hints**

- ### **The HTTP 103 Early Hints information response status code is primarily intended to be used with the Link header to allow the user agent to start preloading resources while the server is still preparing a response.**

<pre>


</pre>  


# ```HTTP 200``` 

## **Early Hints**

- ### **The HTTP 200 OK success status response code indicates that the request has succeeded. A 200 response is cacheable by default.**

### **The meaning of a success depends on the HTTP request method:**

### **GET: The resource has been fetched and is transmitted in the message body.**
### **HEAD: The representation headers are included in the response without any message body**
### **POST: The resource describing the result of the action is transmitted in the message body**
### **TRACE: The message body contains the request message as received by the server.**


# ```HTTP 201``` 

# **Created**

- ### **The HTTP 201 Created success status response code indicates that the request has succeeded and has led to the creation of a resource. The new resource, or a description and link to the new resource, is effectively created before the response is sent back and the newly created items are returned in the body of the message, located at either the URL of the request, or at the URL in the value of the Location header.**


# ```HTTP 202``` 

# **Accepted**

- ### **The HyperText Transfer Protocol (HTTP) 202 Accepted response status code indicates that the request has been accepted for processing, but the processing has not been completed; in fact, processing may not have started yet. The request might or might not eventually be acted upon, as it might be disallowed when processing actually takes place.**

- ### **202 is non-committal, meaning that there is no way for the HTTP to later send an asynchronous response indicating the outcome of processing the request. It is intended for cases where another process or server handles the request, or for batch processing.**


# ```HTTP 203``` 

# **Non-Authoritative Information**

- ### **The HTTP 203 Non-Authoritative Information response status indicates that the request was successful but the enclosed payload has been modified by a transforming proxy from that of the origin server's 200 (OK) response.**

- ### **The 203 response is similar to the value 214, meaning Transformation Applied, of the Warning header code, which has the additional advantage of being applicable to responses with any status code.**


# ```HTTP 204``` 

# **No Content**

- ### **The HTTP 204 No Content success status response code indicates that a request has succeeded, but that the client doesn't need to navigate away from its current page.**

- ### **This might be used, for example, when implementing "save and continue editing" functionality for a wiki site. In this case a PUT request would be used to save the page, and the 204 No Content response would be sent to indicate that the editor should not be replaced by some other page..**


# ```HTTP 205``` 

# **Reset Content**

- ### **The HTTP 205 Reset Content response status tells the client to reset the document view, so for example to clear the content of a form, reset a canvas state, or to refresh the UI.**


# ```HTTP 206``` 

# **Partial Content**

- ### **The HTTP 206 Partial Content success status response code indicates that the request has succeeded and the body contains the requested ranges of data, as described in the Range header of the request.**

- ### **If there is only one range, the Content-Type of the whole response is set to the type of the document, and a Content-Range is provided.**


# ```HTTP 207``` 

# **Partial Content**

- ### **The HTTP 207 Multi-Status response code indicates that there might be a mixture of responses.**

- ### **The response body is a text/xml or application/xml HTTP entity with a multistatus root element. The XML body will list all individual response codes.**


# ```HTTP 208``` 

# **Already Reported**

- ### **The HTTP 208 Already Reported response code is used in a 207 (207 Multi-Status) response to save space and avoid conflicts. If the same resource is requested several times (for example as part of a collection), with different paths, only the first one is reported with 200. Responses for all other bindings will report with this 208 status code, so no conflicts are created and the response stays shorter.**


# ```HTTP 226``` 

# **IM Used**

- ### **In the context of delta encodings, the HTTP 226 IM Used status code is set by the server to indicate that it is returning a delta to the GET request that it received.**

- ### **With delta encoding a server responds to GET requests with differences (called deltas) relative to a given base document (rather than the current document). The client uses the A-IM: HTTP header to indicate which differencing algorithm to use and the If-None-Match: header to hint the server about the last version it got. The server generates a delta, sending it back in an HTTP response with the 226 status code and containing the IM: (with the name of the algorithm used) and Delta-Base: (with the ETag matching the base document associated to the delta) HTTP headers.**


<pre>


</pre>  

# ```HTTP 300``` 

# **Multiple Choices**

- ### **The HTTP 300 Multiple Choices redirect status response code indicates that the request has more than one possible responses. The user-agent or the user should choose one of them. As there is no standardized way of choosing one of the responses, this response code is very rarely used.**

- ### **If the server has a preferred choice, it should generate a Location header.**


# ```HTTP 301``` 

# **Moved Permanently**

- ### **The HyperText Transfer Protocol (HTTP) 301 Moved Permanently redirect status response code indicates that the requested resource has been definitively moved to the URL given by the Location headers. A browser redirects to the new URL and search engines update their links to the resource.**


# ```HTTP 302``` 

# **Found**

- ### **The HyperText Transfer Protocol (HTTP) 302 Found redirect status response code indicates that the resource requested has been temporarily moved to the URL given by the Location header. A browser redirects to this page but search engines don't update their links to the resource (in 'SEO-speak', it is said that the 'link-juice' is not sent to the new URL).**

- ### **Even if the specification requires the method (and the body) not to be altered when the redirection is performed, not all user-agents conform here - you can still find this type of bugged software out there. It is therefore recommended to set the 302 code only as a response for GET or HEAD methods and to use 307 Temporary Redirect instead, as the method change is explicitly prohibited in that case.**


# ```HTTP 303``` 

# **See Other**

- ### **The HyperText Transfer Protocol (HTTP) 303 See Other redirect status response code indicates that the redirects don't link to the requested resource itself, but to another page (such as a confirmation page, a representation of a real-world object — see HTTP range-14 — or an upload-progress page). This response code is often sent back as a result of PUT or POST. The method used to display this redirected page is always GET.**


# ```HTTP 304``` 

# **Not Modified**

- ### **The HTTP 304 Not Modified client redirection response code indicates that there is no need to retransmit the requested resources. It is an implicit redirection to a cached resource. This happens when the request method is a safe method, such as GET or HEAD, or when the request is conditional and uses an If-None-Match or an If-Modified-Since header.**


# ```HTTP 307``` 

# **Temporary Redirect**

- ### **HTTP 307 Temporary Redirect redirect status response code indicates that the resource requested has been temporarily moved to the URL given by the Location headers.**

- ### **The method and the body of the original request are reused to perform the redirected request. In the cases where you want the method used to be changed to GET, use 303 See Other instead. This is useful when you want to give an answer to a PUT method that is not the uploaded resources, but a confirmation message (like "You successfully uploaded XYZ").**


# ```HTTP 308``` 

# **Permanent Redirect**

- ### **The HyperText Transfer Protocol (HTTP) 308 Permanent Redirect redirect status response code indicates that the resource requested has been definitively moved to the URL given by the Location headers. A browser redirects to this page and search engines update their links to the resource (in 'SEO-speak', it is said that the 'link-juice' is sent to the new URL).**

- ### **The request method and the body will not be altered, whereas 301 may incorrectly sometimes be changed to a GET method.**

<pre>


</pre> 

# ```HTTP 400``` 

## **Bad Request**

- ### **The request could not be understood by the server due to malformed syntax. The client SHOULD NOT repeat the request without modifications.**


# ```HTTP 401```

## **Unauthorized**

- ### **401 Unauthorized is returned when a web server requests credentials for a secured document .The client may repeat the request with a suitable authorization header field. If the request already included Authorization credentials, then the 401 response indicates that authorization has been refused for those credentials.**


# ```HTTP 402```

## **Payment Required**

- ### **The HTTP 402 Payment Required is a nonstandard response status code that is reserved for future use.** 

- ### **Sometimes, this status code indicates that the request cannot be processed until the client makes a payment. However, no standard use convention exists and different entities use it in different contexts.** 


# ```HTTP 403```

## **Forbidden**

- ### **403 Forbidden is usually one of four things:**

1. ### **Directory listings are not permitted**

2. ### **The web-server process has inadequate permissions**

4. ### **Requesting address has been banned**


# ```HTTP 404```

## **Not Found**

- ### **404 Not Found means the web-server could not find the requested resource. When encountering a 404 error, a few things can be done:**

1. ### **Check spelling of host, domain, path, and document.**

2. ### **Check case of file and path. Linux and Unix web-servers (unless configured differently) usually distinquish case, with tradition of using all lowercase for each.**

3. ### **Use Google to find an alternative URL to the resource**

4. ### **Try getting a cached page from google.**


# ```HTTP 405```

## **Method Not allowed**

- ### **A 405 Method Not Allowed is presented when attempting a request method that is not permitted by the web server.**


# ```HTTP 406```

## **Not Acceptable**

- ### **The HTTP 406 Not Acceptable client error response code indicates that the server cannot produce a response matching the list of acceptable values defined in the request's proactive content negotiation headers, and that the server is unwilling to supply a default representation.**

# ```HTTP 407```

## **Proxy Authentication Required**

- ### **407 Proxy Authentication Required: The client must first authenticate itself with the proxy before making the request.**


# ```HTTP 408```

## **Request Timeout**

### **This status code will usually result from latency between your computer and the web-server.**

### **To assist in resolving 408 Request Timeout Errors:**

- ### **try another website to make sure it is not the server infrastructure**

- ### **make sure no other downloads are running saturating your bandwidth**

- ### **reconnect to your WiFi**

- ### **reboot your router**

- ### **try an Internet Speed Test**

- ### **If able to connect to another website fine, it is probably a remote network. If an Internet Speed Test is showing latency the problem could be your ISP or LAN.**


# ```HTTP 409```

## **Conflict**

- ### **HTTP response status code 409 Conflict is a client error that is returned by the server to indicate that the request can not be satisfied because the current state is incompatible with what is required. The response from the server may contain information in the message body that the client can use to resolve the conflict.**


# ```HTTP 410```

## **Gone**

- ### **410 Gone client error response code indicates that access to the target resource is no longer available at the origin server and that this condition is likely to be permanent.**

# ```HTTP 411```

## **Length Required**

- ### **411 Length Required client error response code indicates that the server refuses to accept the request without a defined Content-Length header.**


# ```HTTP 412```

## **Precondition Failed**

- ### **Http 412 error Preconditions for the HyperText Transfer Protocol (HTTP) When a client error response code indicates that access to the target resource has been refused, it indicates that the client has encountered a problem.**


# ```HTTP 413```

## **Payload Too Large**

- ### **413 Content Too Large response status code indicates that the request entity is larger than limits defined by server; the server might close the connection or return a Retry-After header field.**


# ```HTTP 414```

## **URI Too Long**

- ### **414 URI Too Long response status code indicates that the URI requested by the client is longer than the server is willing to interpret.**

- ### **There are a few rare conditions when this might occur:**

- ### **when a client has improperly converted a POST request to a GET request with long query information,**

- ### **when the client has descended into a loop of redirection (for example, a redirected URI prefix that points to a suffix of itself),**

- ### **or when the server is under attack by a client attempting to exploit potential security holes.**


# ```HTTP 415```

## **Length Required**

- ### **411 Length Required client error response code indicates that the server refuses to accept the request without a defined Content-Length header.**


# ```HTTP 416```

## **Length Required**

- ### **411 Length Required client error response code indicates that the server refuses to accept the request without a defined Content-Length header.**


# ```HTTP 417```

## **Length Required**

- ### **411 Length Required client error response code indicates that the server refuses to accept the request without a defined Content-Length header.**


# ```HTTP 418```

## **I'm a teapot**

- ### **The HTTP 418 I'm a teapot client error response code indicates that the server refuses to brew coffee because it is, permanently, a teapot. A combined coffee/tea pot that is temporarily out of coffee should instead return 503. This error is a reference to Hyper Text Coffee Pot Control Protocol defined in April Fools' jokes in 1998 and 2014.**


# ```HTTP 421```

## **Misdirected Request**

- ### **The HTTP 421 Misdirected Request client error response code indicates that the request was directed to a server that is not able to produce a response. This might be possible if a connection is reused or if an alternative service is selected.**


# ```HTTP 422```

## **Unprocessable Content**

- ### **The HyperText Transfer Protocol (HTTP) 422 Unprocessable Content response status code indicates that the server understands the content type of the request entity, and the syntax of the request entity is correct, but it was unable to process the contained instructions.**


# ```HTTP 423```

## **Locked**

- ### **The HTTP 423 Locked error response code indicates that either the resources tentatively targeted by is locked, meaning it can't be accessed. Its content should contain some information in WebDAV's XML format.


# ```HTTP 424```

## **Failed Dependency**

- ### **The HTTP 424 Failed Dependency client error response code indicates that the method could not be performed on the resource because the requested action depended on another action, and that action failed.**

- ### **Regular web servers will normally not return this status code. But some other protocols, like WebDAV, can return it. For example, in WebDAV, if a PROPPATCH request was issued, and one command fails then automatically every other command will also fail with 424 Failed Dependency.**


# ```HTTP 425```

## **Too Early**

- ### **The HyperText Transfer Protocol (HTTP) 425 Too Early response status code indicates that the server is unwilling to risk processing a request that might be replayed, which creates the potential for a replay attack.**


# ```HTTP 426```

## **Upgrade Required**

- ### **The HTTP 426 Upgrade Required client error response code indicates that the server refuses to perform the request using the current protocol but might be willing to do so after the client upgrades to a different protocol.**

- ### **The server sends an Upgrade header with this response to indicate the required protocol(s).**


# ```HTTP 428```

## **Precondition Required**

- ### **The HTTP 428 Precondition Required response status code indicates that the server requires the request to be conditional.**

- ### **Typically, this means that a required precondition header, such as If-Match, is missing.**

- ### **When a precondition header is not matching the server side state, the response should be 412 Precondition Failed.**



# ```HTTP 429```

## **Too Many Requests**

- ### **The HTTP 429 Too Many Requests response status code indicates the user has sent too many requests in a given amount of time ("rate limiting").**

- ### **A Retry-After header might be included to this response indicating how long to wait before making a new request.**


# ```HTTP 431```

## **Request Header Fields Too Large**

- ### **The HTTP 431 Request Header Fields Too Large response status code indicates that the server refuses to process the request because the request's HTTP headers are too long. The request may be resubmitted after reducing the size of the request headers.**

- ### **431 can be used when the total size of request headers is too large, or when a single header field is too large. To help those running into this error, indicate which of the two is the problem in the response body — ideally, also include which headers are too large. This lets users attempt to fix the problem, such as by clearing their cookies.**

- ### **Servers will often produce this status if:**

    **1. The Referer URL is too long.**

    **2. There are too many Cookies sent in the request.**


# ```HTTP 451```

## **Unavailable For Legal Reasons**

- ### **The HyperText Transfer Protocol (HTTP) 451 Unavailable For Legal Reasons client error response code indicates that the user requested a resource that is not available due to legal reasons, such as a web page for which a legal action has been issued.**

<pre>


</pre> 

# ```HTTP 500```

## **Internal Server Error**

- ### **The HyperText Transfer Protocol (HTTP) 500 Internal Server Error server error response code indicates that the server encountered an unexpected condition that prevented it from fulfilling the request.**

- ### **This error response is a generic "catch-all" response. Usually, this indicates the server cannot find a better 5xx error code to response. Sometimes, server administrators log error responses like the 500 status code with more details about the request to prevent the error from happening again in the future.**


# ```HTTP 501```

## **Not Implemented**

- ### **The HyperText Transfer Protocol (HTTP) 501 Not Implemented server error response code means that the server does not support the functionality required to fulfill the request.**

- ### **This status can also send a Retry-After header, telling the requester when to check back to see if the functionality is supported by then.**

- ### **501 is the appropriate response when the server does not recognize the request method and is incapable of supporting it for any resource. The only methods that servers are required to support (and therefore that must not return 501) are GET and HEAD.**


# ```HTTP 502```

## **Bad Gateway**

- ### **The HyperText Transfer Protocol (HTTP) 502 Bad Gateway server error response code indicates that the server, while acting as a gateway or proxy, received an invalid response from the upstream server.**


# ```HTTP 503```

## **Service Unavailable**

- ### **The HyperText Transfer Protocol (HTTP) 503 Service Unavailable server error response code indicates that the server is not ready to handle the request.**

- ### **Common causes are a server that is down for maintenance or that is overloaded. This response should be used for temporary conditions and the Retry-After HTTP header should, if possible, contain the estimated time for the recovery of the service.**

- ### **Caching-related headers that are sent along with this response should be taken care of, as a 503 status is often a temporary condition and responses shouldn't usually be cached.**


# ```HTTP 504```

## **Gateway Timeout**

- ### **The HyperText Transfer Protocol (HTTP) 504 Gateway Timeout server error response code indicates that the server, while acting as a gateway or proxy, did not get a response in time from the upstream server that it needed in order to complete the request.**


# ```HTTP 505```

## **HTTP Version Not Supported**

- ### **The HyperText Transfer Protocol (HTTP) 505 HTTP Version Not Supported response status code indicates that the HTTP version used in the request is not supported by the server.**


# ```HTTP 506```

## **Variant Also Negotiates**

- ### **The HyperText Transfer Protocol (HTTP) 506 Variant Also Negotiates response status code may be given in the context of Transparent Content Negotiation (see RFC 2295). This protocol enables a client to retrieve the best variant of a given resource, where the server supports multiple variants.**

- ### **The Variant Also Negotiates status code indicates an internal server configuration error in which the chosen variant is itself configured to engage in content negotiation, so is not a proper negotiation endpoint.**


# ```HTTP 507```

## **Insufficient Storage**

- ### **The HyperText Transfer Protocol (HTTP) 507 Insufficient Storage response status code may be given in the context of the Web Distributed Authoring and Versioning (WebDAV) protocol (see RFC 4918).**

- ### **It indicates that a method could not be performed because the server cannot store the representation needed to successfully complete the request.**


# ```HTTP 508```

## **Loop Detected**

- ### **The HyperText Transfer Protocol (HTTP) 508 Loop Detected response status code may be given in the context of the Web Distributed Authoring and Versioning (WebDAV) protocol.**

- ### **It indicates that the server terminated an operation because it encountered an infinite loop while processing a request with "Depth: infinity". This status indicates that the entire operation failed.**


# ```HTTP 510```

## **Not Extended**

- ### **The HyperText Transfer Protocol (HTTP) 510 Not Extended response status code is sent in the context of the HTTP Extension Framework.**

- ### **In that specification a client may send a request that contains an extension declaration, that describes the extension to be used. If the server receives such a request, but any described extensions are not supported for the request, then the server responds with the 510 status code.**


 ```HTTP 511```

## **Network Authentication Required**

- ### **The HTTP 511 Network Authentication Required response status code indicates that the client needs to authenticate to gain network access.**

- ### **This status is not generated by origin servers, but by intercepting proxies that control access to the network.**

- ### **Network operators sometimes require some authentication, acceptance of terms, or other user interaction before granting access (for example in an internet café or at an airport). They often identify clients who have not done so using their Media Access Control (MAC) addresses.**