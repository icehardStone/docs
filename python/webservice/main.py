# coding: utf-8
from spyne.application import Application
from spyne.decorator import rpc
from spyne import ServiceBase, String
from spyne.protocol.soap import Soap11
from spyne.server.wsgi import WsgiApplication
from wsgiref.simple_server import make_server

from spyne.model.complex import ComplexModel
import pymssql
import urllib.parse
import json
import decimal
import datetime

class RequestContent(ComplexModel):
    MsgId = String
    OperationType = String
    DbType = String
    Server = String
    Database = String
    User = String
    Password = String
    Port = String
    Cmd = String
    
class RequestReponse(ComplexModel):
    MsgId = String
    Content = String

class ComplexEncoder(json.JSONEncoder):
    def default(self, obj):
        if isinstance(obj, datetime.datetime):
            return obj.strftime('%Y-%m-%d %H:%M:%S')
        elif isinstance(obj, datetime.date):
            return obj.strftime('%Y-%m-%d')
        elif isinstance(obj, str):
            return obj.encode('utf-8').decode('unicode_escape')
        elif isinstance(obj, decimal.Decimal):
            return float(obj)
        else:
            return json.JSONEncoder.default(self, obj)

class Request(ServiceBase):
    @rpc(RequestContent,  _returns=RequestReponse)
    def Call(self, request):
        response = RequestReponse()
        response.MsgId = request.MsgId
        try:
            conn = pymssql.connect(server=request.Server,
                                        port=request.Port,
                                        user=request.User,
                                        password=request.Password,
                                        database=request.Database)
            cur = conn.cursor(as_dict=True)
            cur.execute(request.Cmd)
            data = cur.fetchall()
            response.Content = json.dumps(
                data,ensure_ascii=False,cls=ComplexEncoder
            )
        finally:
            print(request.Cmd)
		# return request if request else ""
        return response


app = Application([Request], 'http://schemas.xmlsoap.org/soap/envelope',
                          in_protocol=Soap11(validator='lxml'), out_protocol=Soap11())
wsgi_app = WsgiApplication(app )

if __name__ == '__main__':
    print('start service.......................................')
    server = make_server('0.0.0.0', 8080, wsgi_app )
    server.serve_forever()