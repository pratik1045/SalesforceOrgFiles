trigger AccountContactTrigger on Account (after insert) {
    
    if (Trigger.isInsert)
    {
        List<Contact> lstcon= new List<Contact> ();
        
        for (Account acc: Trigger.new)
        {
            Contact con= new Contact(LastName=acc.Name, AccountId=acc.Id);
            lstcon.add(con);
        }
        
        insert lstcon;
    }

}