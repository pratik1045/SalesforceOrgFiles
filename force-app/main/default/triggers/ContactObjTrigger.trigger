trigger ContactObjTrigger on Contact (before update) {
    
    Contact conOld= Trigger.old[0];
    
    Contact conNew= Trigger.new[0];
    
    System.debug('Old Contact Education:' + conOld.Education__c);
    
    System.debug('New Contact Education:' + conNew.Education__c);

}