request-handler.
    SET request:Response:Content TO "Hello, World!"
    SET request:Response:ContentType TO "text/plain"
    SET request:Response:StatusCode TO 200
    SET request:Response:StatusDescription TO "OK"
    SET request:Response:WriteHeader TO TRUE
.
