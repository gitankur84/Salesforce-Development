@isTest
global class HttpRestFakeResponse implements HttpCalloutMock{    
    global HttpResponse  respond(HttpRequest req){
       System.assertEquals('http://example.com/example/test', req.getEndpoint()) ;
        System.assertEquals('GET', req.getMethod()) ;
        
        HttpResponse res= new HttpResponse();
        res.setHeader('Content-Type', 'application/json');
        res.setBody('{"example":"test"}');
        res.setStatusCode(200);
        return res;
    }

}