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
