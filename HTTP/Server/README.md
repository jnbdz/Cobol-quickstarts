# Server | HTTP | COBOL Quickstarts

From ChatGPT:

HTTP server with COBOL: 

It is possible to create an HTTP server using COBOL, although this would likely require the use of additional libraries or frameworks.

One option you could consider is using the Micro Focus Visual COBOL development environment, which includes built-in support for creating web applications and HTTP servers.

With Visual COBOL, you can create an HTTP server by using the CBL_OC_HTTP_SERVER class and the Start method. Here is an example of how this could be done:

```cobol
IDENTIFICATION DIVISION.
PROGRAM-ID. HTTPSERVER.

DATA DIVISION.

WORKING-STORAGE SECTION.

01  server                   TYPE CBL_OC_HTTP_SERVER.

PROCEDURE DIVISION.

    SET server TO NEW CBL_OC_HTTP_SERVER
    CALL "Start" OF server
        USING 8000
    .

END PROGRAM HTTPSERVER.
```

This code creates a new instance of the CBL_OC_HTTP_SERVER class and starts the server on port 8000.

To handle incoming HTTP requests, you can use the OnRequest event of the server object. For example:

```cobol
PROCEDURE DIVISION.

    SET server TO NEW CBL_OC_HTTP_SERVER
    SET server:OnRequest TO request-handler
    CALL "Start" OF server
        USING 8000
    .

request-handler.
    DISPLAY "Received an HTTP request."
    DISPLAY request:Method
    DISPLAY request:Url
    DISPLAY request:Headers
    DISPLAY request:Content
    DISPLAY request:QueryString
    DISPLAY request:Form
    DISPLAY request:Cookies
    DISPLAY request:Params
    DISPLAY request:Files
    DISPLAY request:UserAgent
    DISPLAY request:ClientIp
    DISPLAY request:IsAuthenticated
    DISPLAY request:IsSecureConnection
    DISPLAY request:IsLocal
    DISPLAY request:IsAjaxRequest
    DISPLAY request:HttpMethod
    DISPLAY request:ContentType
    DISPLAY request:AcceptTypes
    DISPLAY request:UrlReferrer
    DISPLAY request:UserHostAddress
    DISPLAY request:UserHostName
    DISPLAY request:IsMobileDevice
    DISPLAY request:UserAgent
    DISPLAY request:UserLanguages
    DISPLAY request:UserBrowser
    DISPLAY request:UserPlatform
    DISPLAY request:IsRobot
    DISPLAY request:IsSearchBot
    DISPLAY request:IsLinkChecker
    DISPLAY request:IsFeedParser
    DISPLAY request:IsHttpCompressionSupported
    DISPLAY request:IsSecureProtocol
    DISPLAY request:IsSecurePort
.
```

This code sets the request-handler procedure as the event handler for the OnRequest event, and displays various information about the incoming request.

To send a response to the client, you can use the Response property of the request object. For example:

```cobol
request-handler.
    SET request:Response:Content TO "Hello, World!"
    SET request:Response:ContentType TO "text/plain"
    SET request:Response:StatusCode TO 200
    SET request:Response:StatusDescription TO "OK"
    SET request:Response:WriteHeader TO TRUE
.
```
