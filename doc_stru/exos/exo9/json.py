from src.json2xml import Json2xml

data=Json2xml.fromjsonfile('collections-du-musee-des-augustins-ville-de-toulouse.json').data
data_object=Json2xml(data)
x=data_object.json2xml()
with open("sortieXML.xml","w",-1,"utf-8-sig") as fil:
    fil.write("<Document>"+"\n"+str(x)+"\n"+"</Document>")

