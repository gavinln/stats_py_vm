''' Demonstrates how to use attributes in Python
'''
class Point(object):
    def __init__(self):
        self._x = None
        self._y = None
    @property
    def x(self):
        ''' x coordinate of the point '''
        return self._x
    @x.setter
    def x(self, value):
        self._x = value
    @property
    def y(self):
        ''' y coordinate of the point '''
        return self._y
    @y.setter
    def y(self, value):
        self._y = value
    def __str__(self):
        return 'Point(%s, %s)' % (self._x, self._y)

class Rectangle(object):
    def __init__(self):
        self._topLeft = Point()
    @property
    def topLeft(self):
        ''' The top-left corner of a rectangle

        >>> r = Rectangle() # create a rectangle
        >>> r.topLeft = 3 # both x and y are set to 3
        >>> r.topLeft.x
        3
        >>> r.topLeft.y
        3
        >>> r.topLeft.x = 4; r.topLeft.y = 5 # set individually
        >>> r.topLeft.x
        4
        >>> r.topLeft.y
        5
        >>> print r.topLeft
        Point(4, 5)
        '''
        return self._topLeft
    @topLeft.setter
    def topLeft(self, value):
        self._topLeft.x = value
        self._topLeft.y = value
    @property
    def bottomRight(self):
        ''' The bottom-right corner of a rectangle
            See topLeft for how to get and set values
        '''
        return self._bottomRight
    @bottomRight.setter
    def bottomRight(self, value):
        self._bottomRight.x = value
        self._bottomRight.y = value
    def getArea(self):
        ''' computes the area of the rectangle '''
        return 0

def main():
    import doctest
    doctest.testmod()

if __name__ == '__main__':
    main()

