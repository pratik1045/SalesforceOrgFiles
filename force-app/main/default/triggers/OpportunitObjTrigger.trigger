trigger OpportunitObjTrigger on Opportunity (before update) {  //Only available in update and delete triggers
    
    for (Opportunity oppOld: Trigger.old)
    {
        for (Opportunity oppNew: Trigger.new)
        {
            if (oppOld.Id == oppNew.Id && OppOld.Amount != oppNew.Amount)
            {
                oppNew.Amount.addError('Changing amount is not possible'); //Trigger Exception addError
            }
        }
    }
}