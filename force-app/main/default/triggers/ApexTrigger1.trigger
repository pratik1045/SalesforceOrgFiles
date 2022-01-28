trigger ApexTrigger1 on Account (before update) {  //Only available in before update, afterupdate, after insert, after undelete
    
    Map<Id,Account> hMap= new Map<Id,Account>();
    hMap= Trigger.newMap;
    
    List<Contact> clist= [SELECT Lastname, MailingCity, AccountId FROM Contact WHERE AccountId in: hMap.keySet()];
    
    for (Contact con: clist)
    {
        Account acc= hMap.get(con.AccountId);
        con.MailingCity= acc.BillingCity;
    }
    
    update clist;
}