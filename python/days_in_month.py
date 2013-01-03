'''This module has functions to retrive the number of days in a month'''

def get_days_in_month(month):
    ''' Gets the numbers of days in a month. Does not support February

    :param month: month of year as a number
    :type month: int

    * month = 1 (Jan)
    * month = 2 (Feb)
    * ...
    * month = 12 (Dec)

    :returns: int
    '''

    if month in (1, 3, 5, 7, 8, 10, 12):
        return 31
    elif month in (2, 4, 6, 9, 11):
        return 30
    return -1

def other_undocumented_fn(month):
    # not using month
    return

class Test1(object):
    def __init__(self):
        self.x = 3
        self.y = 5
        self.z = 4

class Test2(object):
    def __init__(self):
        self.x = 13
        self.y = 15
        self.z = 14

