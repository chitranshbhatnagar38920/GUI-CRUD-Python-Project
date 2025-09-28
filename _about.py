import tkinter as tk
from tkinter import *
from tkinter import ttk 
import tkinter.messagebox as tkmsgbox
import pymysql
import pandas as pd
import numpy as np

def manual():
    frameHelp = Tk()
    frameHelp.title('Manual by Chitransh:')
    r=0
    Label(frameHelp, height=30, width=100, text='"MASTER:" This allows you to input data\nif you want to, for example you saw a customer like never before, you immediately\nthen can go to customercategory ioption in this menu and insert one...\n\n"EDIT:" And then comes this, where you can easily handle your mistakes\nby editing them in a few seconds...\n\n"TRANSACTIONS:" Here you can insert data that you need to insert everyday\nlike if any customer comes, then you can enter his/her name\nin MASTER, then come to transaction to enter data like what did he/she buy,\nhow much/ when/ who bought the stuff and so on...\n\n"REPORT:" And then if you want to see the data you just entered,\njust click on REPORT and then Reports-All to find out what data you have...\n\n"DATA ANALYSIS:" This is self-explanatory about what this does, it allows you see the trend,\npredict future sales trend with a certain probability, make business decisions and so on...\n\n"DATABASE:" This option helps you manage your database,\ni.e. a place where all your tables exist, for example-\nyou can take a backup of your database if you think you might lose it...\n\n"HELP:" This is the menu which you are using right now\nto see the manual that corresponds with the software, this also\nhas other options that allow you to search for the query you have regarding running of program...\n\n"EXIT:" This way you can close the program...').grid(row=r, column=0)
    frameHelp.mainloop()    
def help():
    frameHelp = Tk()
    frameHelp.title('Help by Chitransh:')
    r=0
    Label(frameHelp, height=10, width=50, text='If tables do not appear in the "Reports-All" report Menu suboption,\n Then click on Database Option\nand Click on the Create Tables Option.\nIf you are worried about losing your Data,\nClick on Database option,\nand then Click on Backup Database, and you will nver lose it...').grid(row=r, column=0)
    frameHelp.mainloop()
def about():
    frameHelp = Tk()
    frameHelp.title('About This Software:')
    r=0
    Label(frameHelp, height=10, width=50, text="This Software is designed to help enter the data and easily manage it using variety of options including those that could potentially save you a ton of time, i.e. options that will help you analyse your data using graphs like line, bar and other charts, therefore showcasing thousands of data values within a fraction of second rapidly decreasing the time you would normally take to make a business decision. Therefore this is not just a storage hub, but is like a friend who is always available for your help in the time when you need it the most...").grid(row=r,column=5)
    frameHelp.mainloop()
def contact():
    frameHelp = Tk()
    frameHelp.title('Contact Chitransh At:')
    r=0
    Label(frameHelp, height=5, width=50, text="Tele. No.: +91-9453622857\nAddress: Near Nanital, UK, 262001\nEmail: smartestdeveloper69@mydomain.com").grid(row=r, column=0)
    frameHelp.mainloop()    
