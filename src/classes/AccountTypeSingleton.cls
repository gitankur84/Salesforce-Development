public class AccountTypeSingleton {
    public string recid {get;private set;}
    public void AccountTypeSingletonMethod(){
        //how to get recordtypeid
        system.debug('recid before= '+recid);
		//govern limit fail if more that 100 records
        recid=Account.SObjectType.getDescribe().getRecordTypeInfosByName().get('Customer').getRecordTypeId();
        system.debug('recidAfter= '+recid);
    }
    
    private static AccountTypeSingleton instance=null;
    public static AccountTypeSingleton getInstance(){
        if(instance==null)
         instance= new AccountTypeSingleton();
        return instance;
    }
    
     public void AccountCustomerRecordType(){
        //how to get recordtypeid
        system.debug('recid before= '+recid);
		//govern limit fail if more that 100 records
        recid=Account.SObjectType.getDescribe().getRecordTypeInfosByName().get('Customer').getRecordTypeId();
        system.debug('recidAfter= '+recid);
    }

}