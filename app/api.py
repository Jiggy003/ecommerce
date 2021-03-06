from flask import Flask, request,jsonify
from flask_restful import Api,Resource
from customer import Invoice
from customer import Products
from customer import Orders


app = Flask(__name__)
api = Api(app)
invoice = Invoice()
products = Products()
orders = Orders()

@app.route('/invoices')
def fetchInvoice():
   #offset = request.args.get('offset')
   return invoice.get() #get(offset)

@app.route('/invoices',methods = ['POST'])
def postAnInvoice():
    return invoice.post()

@app.route('/invoices/<id>', methods = ['GET'])
def getInvoice(id):
    return invoice.getInvoice(id)

@app.route('/invoices/<id>',methods = ['DELETE'])
def deleteInvoice(id):
    return invoice.delete(id)

@app.route('/products')
def showProducts():
   
    return products.get()

@app.route('/products/<id>', methods= ['GET'])
def getProduct(id):
    return products.findProduct(id)

@app.route('/products', methods = ['POST'])
def postProduct():
    return products.addProduct()

@app.route('/products/<id>', methods = (['DELETE']))
def removeProduct(id):
    return products.removeProduct(id)

@app.route('/orders')
def showOrders():
    return orders.get()

@app.route('/orders/<id>', methods = ['GET'])
def getOrder(id):
    return orders.findOrder(id)

@app.route('/orders', methods = ['POST'])
def postOrder():
    return orders.addOrder()

@app.route('/orders/<id>', methods = ['DELETE'])
def removeOrder(id):
    return orders.removeOrder(id)

@app.route('/')
def helloIndex():
    return 'Hello World'
app.run(port = 9000, debug=True, host="0.0.0.0")


