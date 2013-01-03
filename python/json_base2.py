''' this class demonstrates how to use metaclasses to convert 
json strings to predefined objects of classes derived from JsonBase2
by matching fields of type JsonField
'''

import json

class JsonBase2:
    pass

class InvalidJsonFieldException(Exception):
    pass

class MissingJsonBaseException(Exception):
    pass

class InfoJsonBase2(object):
    ''' contains field names and class for a JsonBase2 type
    '''
    def __init__(self, fields, classObj):
        self.fields = fields
        self.classObj = classObj

def checkFields(classname, classDict):
    ''' checks and returns fields and raises an error if they are invalid '''
    validFields = []
    rootClasses = None
    for key, value in classDict.items():
        if isinstance(value, JsonField):
            validFields.append(key)
        elif isinstance(value, JsonBase2):
            msg = 'class %s(JsonBase2):\n\t%s = %s()# should be JsonField()' 
            invalidJsonFieldError = msg % (
                classname, key, value.__class__.__name__)
            msgPrefix = 'Cannot have JsonBase2 class with the following field:\n%s'
            raise InvalidJsonFieldException(
                msgPrefix % invalidJsonFieldError)
    return validFields

class MetaClass(type):
    # should create a new class instead of using a dict of dict type
    jsonBaseClasses = {}
    def __new__(meta, classname, bases, classDict):
        #print 'new %s, %s %s %s' % (meta, type(meta), classname, type(classname))
        if classname != "JsonBase2":
            validFields = checkFields(classname, classDict)
            def init_fn(self, **kwargs):
                for key in kwargs.keys():
                    if key not in validFields:
                        raise Exception('Invalid field: %s' % key)
                self.__dict__.update(kwargs)
            classDict['__init__'] = init_fn
            meta.jsonBaseClasses[classname] = InfoJsonBase2(
                set(validFields), None)
        return super(MetaClass, meta).__new__(
                meta, classname, bases, classDict)
    def __init__(cls, name, bases, dct):
        #print 'init %s, %s, %s' % (cls, name, type(name))
        # save class obj for known classes
        if name in cls.jsonBaseClasses:
            infoJsonBase = cls.jsonBaseClasses[name]
            infoJsonBase.classObj = cls
        super(MetaClass, cls).__init__(name, bases, dct)

class JsonField(object):
    def __init__(self):
        pass

def as_json_obj(obj):
    ''' converts JsonBase2 objects to a Json object with only
    dict, list and basic types '''
    if isinstance(obj, JsonBase2):
        if len(obj.__dict__) == 0:
            return super(JsonBase2, obj).__str__()
        else:
            jsonDict = {}
            for key, value in obj.__dict__.items():
                jsonDict[key] = as_json_obj(value)
            return jsonDict
    else:
        if isinstance(obj, list):
            jsonObj = [as_json_obj(listItem) for listItem in obj]
        elif isinstance(obj, dict):
            jsonObj = {dictKey:as_json_obj(
                dictItem) for dictKey, dictItem in obj.items()}
        else:
            jsonObj = obj
    return jsonObj

class ObjectEncoder(json.JSONEncoder):
    def default(self, obj):
        if isinstance(obj, JsonBase2):
            return obj.__dict__
        return json.JSONEncoder.default(self, obj)

class JsonBase2(object):
    __metaclass__ = MetaClass
    @classmethod
    def loads(cls, jsonStr, strict=True):
        classFieldsDict = cls.__metaclass__.jsonBaseClasses
        def as_object(dct):
            for name, infoJsonBase in classFieldsDict.items():
                if frozenset(dct.keys()) == infoJsonBase.fields:
                    classFn = infoJsonBase.classObj
                    return classFn(**dct)
            if not strict:
                return dct
            # strict = True so only create JsonBase2 classes
            keyJsonFieldStr = '\n\t' + '\n\t'.join(
                '%s = JsonField()' % key for key in dct.keys())
            missingClassError = 'class ???(JsonBase2):%s' % (
                keyJsonFieldStr)
            raise MissingJsonBaseException(
                'No JsonBase2 class contained within %s of type:\n%s' % (
                    cls.__name__, missingClassError))
        jsonObj = json.loads(jsonStr, object_hook=as_object)
        return jsonObj
    def __str__(self):
        json_obj = as_json_obj(self)
        return json.dumps(json_obj, indent=4)
    def as_str(self, sep='\n', show_name=True, cols=None):
        ''' displays objects as name=value pairs
        separated by character separator'''
        valueFn = lambda obj, key: repr(obj.__dict__.get(key))
        if not cols:
            cols = self.__dict__.keys()
        if show_name:
            return sep.join('{}={}'.format(key
                , valueFn(self, key)) for key in cols)
        else:
            return sep.join('{}'.format(valueFn(self, key)) for key in cols)
    def dumps(self, sort=False):
        if sort:
            self.sort()
        return json.dumps(self, separators=(',',':'), cls=ObjectEncoder)

class H(object):
    @staticmethod
    def tag(value, html, indent=0):
        ''' surrounds value with an html tag.
        Uses an indent of two spaces '''
        return '\n%s<%s>%s</%s>' % (
            ' ' * indent, html, value, html)
    @staticmethod
    def tr(row, indent=0):
        ''' returns an iterable as a <tr> row in an html table '''
        return H.tag(''.join(H.tag(item, 'td', indent + 2) for item in row)
            , 'tr', indent)

class Rectangle(JsonBase2):
    TopLeft = JsonField()
    BottomRight = JsonField()
    def _repr_html_(self):
        headings = ['TopLeft', 'BottomRight']
        data = [self.TopLeft, self.BottomRight]
        rows = []
        rows.append(H.tr(headings, 1))
        rows.append(H.tr(data, 1))
        htmlTable = H.tag(''.join(rows), 'table')
        return htmlTable

def main():
    jsonStr = '{"TopLeft":{"z1":1, "y1":2},"BottomRight":{"x2":3, "y2":4}}'
    jsonStr = '''{"TopLeft":3,"BottomRight":5}'''
    r = Rectangle.loads(jsonStr, strict=True)
    return r

if __name__ == '__main__':
    main()

