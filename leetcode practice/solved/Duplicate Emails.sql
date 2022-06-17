
'''
Taking and printing out the duplicate records
'''

select email from person
group by email
having count(email) > 1