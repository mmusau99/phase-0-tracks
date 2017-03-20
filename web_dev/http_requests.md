# HTTP Requests
* What are some common HTTP status codes?

* Code 100 Continue - This code informs the user that the initial part of the request has been recieved, and has not been rejected.
The client should proceed with the remainder of the request. if it has already been sent ignore the response. the server must send a final reposone.

* Code 101 Switching Protocols - The server understands and is willing to switch to a different protocol defined by the responeses upgrade header. it will upgrade immediately after the empty line, which terminates the 101 request.

* Code 2xx - This status indicates the client's request was sucessfully recieved, understood, and processed. 

* Code 200 Ok - The request has succeeded. The information returned is dependednt on the method used in the request.
  EX: GET - an entity related to the requested source is sent in reponse.

* Code 201 Created - The request has been fulfilled and resulted in a new resource being created. The new resource can be referenced by the URI returned in the entity of the response. 

* Code 203 Non-Authoritative Information - the returned metainformation in the entity-header is not the one set as available from the origin server, but is gathered from a local third party copy.

* Code 204 NO Content - The server has fulfilled the request by does not need to return an entity.

* Code 205 Reset Content - The server has fulfilled the request and the user should reset the document view which caused the request to be sent.

* Code 206 Partial Content - The server has fulfilled the partial GET request for the resource.

* Code 300 Multiple Choices - The requested resource corresponds to any one of a set of representations, each with its own specific location, and agent- driven negotiation information (section 12) is being provided so that the user (or user agent) can select a preferred representation and redirect its request to that location.

* Code 301 Moved Permanently - The requested resource has been assigned a new permanent URI and any future references to this resource SHOULD use one of the returned URIs. Clients with link editing capabilities ought to automatically re-link references to the Request-URI to one or more of the new references returned by the server, where possible. This response is cacheable unless indicated otherwise.

* Code 302 Found - The requested resource resides temporarily under a different URI. Since the redirection might be altered on occasion, the client SHOULD continue to use the Request-URI for future requests.

* Code 400 bad Request - The request could not be understood by the server due to malformed syntax. The client SHOULD NOT repeat the request without modifications.

* Code 409 Conflict - The request could not be completed due to a conflict with the current state of the resource. This code is only allowed in situations where it is expected that the user might be able to resolve the conflict and resubmit the request. 

* Code 408 Request Timeout -The client did not produce a request within the time that the server was prepared to wait. The client MAY repeat the request without modifications at any later time.

* What is the difference between a GET request and a POST request? When might each be used?
`HTTP POST requests supply additional data from the client to the server in the message body. GET requests include all required data in the URL. METHOD="POST" the enctype attribute can be multiart/form or application/urlencoded, where GET only application/urlencoded is allowed. GET is recommended when submittig "idempotent" forms forms that don't significantly alter the state of the world. forms that require database queries only. If database updates or other actions like triggering emails are involved, using POST is recommended.
` 