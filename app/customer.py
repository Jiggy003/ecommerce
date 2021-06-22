import sqlite3
from flask_restful import Resource
from flask import request
import json
import datetime
from flask import Flask, request, jsonify
import random
import mysql.connector



class Inventory_invoice():
    def __init__(self, id, customer_name, date, amount,status,delivery_status):
        self.id = id
        self.customer_name = customer_name
        self.date = date
        self.amount = amount
        self.status = status
        self.delivery_status = delivery_status

class Invoice(Resource):
    def post(self):
        data = request.get_json()
        id = data['id']
        customer_name = data['customer_name']
        amount = data['amount']
        date = datetime.datetime.now()
        status = data['status']
        delivery_status = data['delivery_status']
        db = mysql.connector.connect(
           host = "database",
           user = "root",
           password = "password",
           database = "ecommerce",
           auth_plugin='mysql_native_password')
        cursor = db.cursor()
        query = "insert into invoices (id,customer_name,amount,date,status,delivery_status) values({},'{}', {},'{}','{}','{}')".format(
            id, customer_name, amount, date, status, delivery_status)
        cursor.execute(query, (data))

        db.commit()
        db.close()

        return{"message": "Invoice successful created"}

    def delete(self,data):
    
        id = data
        db = mysql.connector.connect(
            host = "database",
            user = "root",
            password = "password",
            database = "ecommerce",
            auth_plugin='mysql_native_password')
        cursor = db.cursor()

        query = "delete from invoices where id = {}".format(id)
        cursor.execute(query)

        db.commit()
        db.close()

        return{"message": "Record deleted successfully"}

    def get(self):#,offset):
      
        db = mysql.connector.connect(
            host = "database",
            user = "root",
            password = "password",
            database = "ecommerce",
            auth_plugin='mysql_native_password')
        cursor = db.cursor()
        query = "select * from  invoices order by id desc limit 20"# offset 20"#{} ".format(offset)
        cursor.execute(query)
        data = cursor.fetchall()

        json_docs = []
        for doc in data:
            json_doc = Inventory_invoice(doc[0],doc[1],doc[2],doc[3],doc[4],doc[5])
            jsonString = (json_doc.__dict__)
            json_docs.append(jsonString)
        db.commit()
        db.close()

        return{"data": json_docs, "status": 200}

    def getInvoice(self,data):
        id = data
        db = mysql.connector.connect(
           host = "database",
           user = "root",
           password = "password",
           database = "ecommerce",
           auth_plugin='mysql_native_password')
        cursor = db.cursor()
        query = "select * from invoices where id = {}".format(id)
        cursor.execute(query)
        data = cursor.fetchall()
        json_docs = []
        for doc in data:
            json_doc = Inventory_invoice(doc[0],doc[1],doc[2],doc[3],doc[4],doc[5])
            jsonString = (json_doc.__dict__)
            json_docs.append(jsonString)

        db.commit()
        db.close()

        return{"status": "success","data": json_docs}


class Display:
    def __init__(self,id, name, description, price):
        self.id = id
        self.name = name
        self.price = price
        self.description = description


class Products(Resource):
    def get(self):
        db = mysql.connector.connect(
           host = "database",
           user = "root",
           password = "password",
           database = "ecommerce",
           auth_plugin='mysql_native_password')
        cursor = db.cursor()
        query = "select id, name, description, price from products"
        cursor.execute(query)
        data = cursor.fetchall()

        json_docs = []
        for doc in data:
            Show = Display(doc[0],doc[1],doc[2],doc[3])
            jsonStr = (Show.__dict__)
            json_docs.append(jsonStr)
        
        db.commit()
        db.close()   

        return{"products": json_docs, "status": 200}

        
        

    def findProduct(self,data):
        id = data
        db = mysql.connector.connect(
            host = "database",
            user = "root",
            password = "password",
            database = "ecommerce",
            auth_plugin='mysql_native_password')
        cursor = db.cursor()
        query = "select * from products where id = {} ".format(id)
        cursor.execute(query)
        data = cursor.fetchall()
        json_docs = []
        for doc in data:
            json_product = Display(doc[0],doc[1],doc[2],doc[3])
            jsonStr = (json_product.__dict__)
            json_docs.append(jsonStr)
        db.commit()
        db.close()
        
        return{"product":json_docs, "status":200}

    def addProduct(self):
        data = request.get_json()
        id = data['id']
        description = data['description']
        name = data['name']
        price = data['price']
        db = mysql.connector.connect(
           host = "database",
           user = "root",
           password = "password",
           database = "ecommerce",
           auth_plugin='mysql_native_password')
        cursor = db.cursor()
        query = "insert into products values ({},'{}','{}',{})".format(id,name,description,price)
        cursor.execute(query, (data))

        db.commit()
        db.close()
        return {"message":"product added successfully", "status":200}


    def removeProduct(self,data):
        id = data
        db = mysql.connector.connect(
           host = "database",
           user = "root",
           password = "password",
           database = "ecommerce",
           auth_plugin='mysql_native_password')
        cursor = db.cursor()
        query = "delete from products where id = {}".format(id)
        cursor.execute(query)

        db.commit()
        db.close()

        return{"message":"product deleted successfully", "status":200}


class Moves:
    def __init__(self,id,invoices_id,products_id,quantity,date,delivery_date):
        self.id = id
        self.invoices_id = invoices_id
        self.products_id = products_id
        self.quantity = quantity
        self.date = date
        self.delivery_time = delivery_date

class Orders(Resource):
    def get(self):
        db = mysql.connector.connect(
           host = "database",
           user = "root",
           password = "password",
           database = "ecommerce",
           auth_plugin='mysql_native_password')
        cursor = db.cursor()
        query = "select id, invoices_id, products_id, quantity, date, delivery_date from orders" 
        cursor.execute(query)
        data = cursor.fetchall()
        
        json_docs = []
        for doc in data:
            Yes = Moves(doc[0],doc[1],doc[2],doc[3],doc[4],doc[5])
            jsonStrings = (Yes.__dict__)
            json_docs.append(jsonStrings)

        db.commit()
        db.close()

        return {"orders":json_docs, "status":200}

    def findOrder(self,data):
        id = data
        db = mysql.connector.connect(
           host = "database",
           user = "root",
           password = "password",
           database = "ecommerce",
           auth_plugin='mysql_native_password')
        cursor = db.cursor()
        query = "select * from orders where id = {}".format(id)
        cursor.execute(query)
        data = cursor.fetchall()
        json_docs = []
        for doc in data:
            json_product = Moves(doc[0],doc[1],doc[2],doc[3],doc[4],doc[5])
            jsonStrings = (json_product.__dict__)
            json_docs.append(jsonStrings)
        
        db.commit()
        db.close()

        return {"order":json_docs, "status":200}
        
    def addOrder(self):
        data = request.get_json()
        id = data['id']
        invoices_id = data['invoices_id']
        products_id = data['products_id']
        quantity = data['quantity']
        date = data['date']
        delivery_date = data['delivery_date']
        db = mysql.connector.connect(
           host = "database",
           user = "root",
           password = "password",
           database = "ecommerce",
           auth_plugin='mysql_native_password')
        cursor = db.cursor()
        query = "insert into orders (id,invoices_id,products_id,quantity,date,delivery_date) values ({},{},{},{},'{}','{}') ".format(id,invoices_id,products_id,quantity,date,delivery_date)
        cursor.execute(query, (data))
        
        db.commit()
        db.close()

        return{"message":"Order inserted successfully", "status":200}


    def removeOrder(self,data):
        id = data
        db = mysql.connector.connect(
           host = "database",
           user = "root",
           password = "password",
           database = "ecommerce",
           auth_plugin='mysql_native_password')
        cursor = db.cursor()
        query = "delete from orders where id = {}".format(id)
        cursor.execute(query)

        db.commit()
        db.close()

        return{"message":"order deleted successfully", "status":200}


