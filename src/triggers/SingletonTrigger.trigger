trigger SingletonTrigger on Account (before insert,before update) {
    //This call impact the Apex describe call and may impact the govern limit in case of more than 100 records processed using trigger
    AccountTypeSingleton ast= new AccountTypeSingleton();
	ast.AccountTypeSingletonMethod();
    
    //To remediate the above govern issue we need to make class singleton so that always one instace is available in 
    //transaction for that Apex describe
    AccountTypeSingleton ats= AccountTypeSingleton.getInstance();
    ats.AccountCustomerRecordType();
}