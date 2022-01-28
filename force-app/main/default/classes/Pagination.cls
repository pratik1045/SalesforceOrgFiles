public class Pagination {
    
    private Integer totalrecs=0;
    private Integer OffsetSize=0;
    private Integer LimitSize=5;
    
    public Pagination ()
    {
        totalrecs= [SELECT Count() FROM Account];
    }
    
    public List<Account> getacclist ()
    {
        List<Account> acc=Database.query('SELECT Name, Website, Annual Revenue, Description, Type FROM Account LIMIT'+LimitSize+'OFFSET'+OffsetSize);
        
        return acc;
    }
    
    public void previous()
    {
        OffsetSize=OffsetSize-LimitSize;
    }
    
    public void next()
    {
        OffsetSize=OffsetSize+LimitSize;
    }

}