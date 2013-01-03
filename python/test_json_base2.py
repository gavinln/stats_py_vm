from json_base2 import JsonBase2
from json_base2 import JsonField
from json_base2 import Rectangle

class Rectangle2(JsonBase2):
    TopLeft = JsonField()
    BottomRight = JsonField()

class tl(JsonBase2):
    z1 = JsonField()
    y1 = JsonField()

class br(JsonBase2):
    x2 = JsonField()
    y2 = JsonField()

def main():
    jsonStr = '{"TopLeft":{"z1":1, "y1":2},"BottomRight":{"x2":3, "y2":4}}'
    #jsonStr = '''{"TopLeft":3,"BottomRight":5}'''
    r = Rectangle.loads(jsonStr, strict=True)
    print r

if __name__ == '__main__':
    main()

