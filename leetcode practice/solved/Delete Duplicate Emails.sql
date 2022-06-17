delete p2
from person p1 join person p2
on p1.email = p2.email
and p1.id < p2.id

'''
We are supposed to keep the email entry with the lowest id. Since we have a filter on p1.Id < p2.Id, 
p2 will always be the email duplicate entry with the higher id. There can be more than one duplicate but this query 
deletes every p2 that can be joined based on the conditions: same email and bigger id as another entry (our p1). 
'''