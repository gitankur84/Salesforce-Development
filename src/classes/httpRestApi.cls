public class httpRestApi {
    public static HttpResponse testRestMethod(){
        HttpRequest req= new HttpRequest();
        req.setEndpoint('http://example.com/example/test');
        req.setMethod('GET');
        Http h= new Http();
        HttpResponse res=h.send(req);
        return res;
    }

}