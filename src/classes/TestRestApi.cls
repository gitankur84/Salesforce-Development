@isTest
private class TestRestApi {
    @isTest
    static void testCallout(){
        Test.setMock(HttpCalloutMock.class, new HttpRestFakeResponse());
        HttpResponse res = httpRestApi.testRestMethod();
         String contentType = res.getHeader('Content-Type');
        System.assert(contentType == 'application/json');
        String actualValue = res.getBody();
        String expectedValue = '{"example":"test"}';
         System.assertEquals(actualValue, expectedValue);
        System.assertEquals(200, res.getStatusCode());

    }
    
    @isTest
    static void testCalloutFail(){
        Test.setMock(HttpCalloutMock.class, new HttpRestFakeResponse());
        HttpResponse res = httpRestApi.testRestMethod();
         String contentType = res.getHeader('Content-Type');
        System.assert(contentType == 'application/xml');
        String actualValue = res.getBody();
        String expectedValue = '{"example":"Notest"}';
         System.assertEquals(actualValue, expectedValue);
        System.assertEquals(200, res.getStatusCode());

    }

}