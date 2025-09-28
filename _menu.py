#====================================================================================
#import standard Python library files
#-------------------------------------
from _libraryAndDBConnection import *   #includes database connection and cursor setting strings
#import custom library files
#-------------------------------------
import _master                          #for master table data handling
import _edit                            #for updating tables data 
import _report                          #for selecting tables data  
import _transaction                     #for transaction table data handling
import _dataAnalysisAndPlot             #for data analysis & plotting 
import _database                        #for database management
import _createMySQLTablesWithTestData   #for creating MySQL tables with test data 
import _dataExportImport                #  
import _reportCustom                    #
import _dataAnalysisAndPlotCustom       #  
import _pdfFileGeneration               #
import _about                           #
#====================================================================================
def donothing():
        pass
#====================================================================================
def menu(rootframe):
        #--------------------------------------------------------------------
        menubar = Menu(rootframe)
        #--------------------------------------------------------------------
        newmenu = Menu(menubar, tearoff=0)
        
        newmnudrug = {'table':['drug'],'pk':['drugcode'],'cbo':['drugcategory.drugcategory',
                        'unit.unit'],'autofill':['drugcategory#drugcategory.gstrate']} 
        newmenu.add_command(label="Medicine",
                            command=lambda: _master.createInsertRootFrame(rootframe, newmnudrug))

        newmnuemployee = {'table':['employee'],'pk':['serviceid'],'cbo':['employeecategory.employeecategory','gender.gender','country.country'],'autofill':[]} 
        newmenu.add_command(label="Employee",
                            command=lambda: _master.createInsertRootFrame(rootframe, newmnuemployee))

        newmnusupplier = {'table':['supplier'],'pk':['suppliercode'],'cbo':['suppliercategory.suppliercategory'],'autofill':[]} 
        newmenu.add_command(label="Supplier",
                            command=lambda: _master.createInsertRootFrame(rootframe, newmnusupplier))

        newmenu.add_separator()
        
        newmnudrugcat = {'table':['drugcategory'],'pk':['drugcategoryid'],'cbo':[''],'autofill':[]} 
        newmenu.add_command(label="Medicine Category",
                            command=lambda: _master.createInsertRootFrame(rootframe, newmnudrugcat))
        
        newmnuemployeecat = {'table':['employeecategory'],'pk':['employeecategoryid'],'cbo':[''],'autofill':[]} 
        newmenu.add_command(label="Employee Category",
                            command=lambda: _master.createInsertRootFrame(rootframe, newmnuemployeecat))

        newmnusuppliercat = {'table':['suppliercategory'],'pk':['suppliercategoryid'],'cbo':[''],'autofill':[]} 
        newmenu.add_command(label="Supplier Category",
                            command=lambda: _master.createInsertRootFrame(rootframe, newmnusuppliercat))

        newmnucustomer = {'table':['customer'],'pk':['customerid'],'cbo':['customercategory.customercategory','gender.gender'],'autofill':[]} 
        newmenu.add_command(label="Customer",
                            command=lambda: _master.createInsertRootFrame(rootframe, newmnucustomer))

        newmnucustomercat = {'table':['customercategory'],'pk':['customercategoryid'],'cbo':[''],'autofill':[]} 
        newmenu.add_command(label="Customer Category",
                            command=lambda: _master.createInsertRootFrame(rootframe, newmnucustomercat))

        newmnubusinessname = {'table':['businessname'],'pk':['businessname'],'cbo':[''],'autofill':[]} 
        newmenu.add_command(label="Business Name",
                            command=lambda: _master.createInsertRootFrame(rootframe, newmnubusinessname))
        
        menubar.add_cascade(label="MASTER", menu=newmenu)
        #--------------------------------------------------------------------
        editmenu = Menu(menubar, tearoff=0)
        editmenutabledata = {'table':['drug'],'pk':['drugcode'],'cbo':['drugcategory.drugcategory'],'autofill':['']}
        editmenu.add_command(label="Edit Database Table Data",
                    command=lambda: _edit.createEditRootFrame(rootframe, editmenutabledata))
        menubar.add_cascade(label="EDIT", menu=editmenu)
        #--------------------------------------------------------------------
        transmenu = Menu(menubar, tearoff=0)
        paramitempurchase = {
                'table'                 : ['purchase'],
                'pk'                    : ['purchaseid'],
                'dateColumn'            : 'pdate',
                'pickup'                : [
                                          {                
                                          'masterCBO'             : ['drug.drugcategory#drug.drugname'],
                                          'masterLookupItems'     : ['drug.drugname'],
                                          'getvalfromothertableonlookupcboevent' : [],
                                          'masterPrimaryKeys'     : ['drug.drugcode'],
                                          'masterAutofillValues'  : ['drug.drugcode','drug.drugaverageprice','drug.drugtotalstock',
                                                                     'drug.unit','drug.gstrate'],
                                          'condition'             : [],
                                          },
                                          {                
                                          'masterCBO'             : ['supplier.suppliercategory#supplier.suppliername'],
                                                  'masterLookupItems'     : ['supplier.suppliername'],
                                          'getvalfromothertableonlookupcboevent' : [],
                                          'masterPrimaryKeys'     : ['supplier.supplierid'],
                                          'masterAutofillValues'  : ['supplier.suppliercode','supplier.suppliermobile'],
                                          'condition'             : [],         
                                          },
                                          ],
                'transItems'            : ['invoice','drugquantity','drugprice','freight'],
                'expressions'           : [                                           
                                           'amount = float(drugquantity.get()) * float(drugprice.get())',
                                           'gst = round(float(amount.get()) * float(gstrate.get()) / 100.00, 2)',
                                           'netamount = float(amount.get()) + float(gst.get())',
                                           'grandamount = float(netamount.get()) + float(freight.get())',
                                           'drugminsaleprice = round(float(grandamount.get()) / float(drugquantity.get()),2)',
                                           'drugstock = float(drugquantity.get())',
                                           ],
                'displayonlynoinsert'   : [],
                'invisible'             : [
                                          'suppliercategory = suppliercategory.get()', 
                                          'suppliercode = suppliercode.get()',
                                          'suppliername = suppliername.get()',                                          
                                          'suppliermobile = suppliermobile.get()',
                                          'drugcategory = drugcategory.get()',
                                          'drugcode = drugcode.get()',
                                          'drugname = drugname.get()',                                                                                    
                                          'unit = unit.get()',
                                          'gstrate = gstrate.get()',                                          
                                          ],
                'prefilled'             : ['freight=\"0.00\"'],  #to set 0.00 as default inital value in the textfield 'freight'
                'masterUpdates'         : [                                          
                                          'drug.drugtotalstock=float(drugtotalstock.get())+float(drugquantity.get())',
                                          # to reset average stock price - if not FIFO/LIFO 
                                          # 'masterUpdates'
                                          # 'item.itemaverageprice=round((float(itemaverageprice.get())+float(itemminsaleprice.get()))/2, 2)',
                                          ],                                               
                }

        transmenu.add_command(label="Item Purchase", command=lambda: _transaction.createTransRootFrame(rootframe, paramitempurchase))

        transmenu.add_separator()
        # use 'masterLookupItems' : ['item.itemname']
        # so as to update the total quantity in items table
        # in addition to the stock updation in itempurchase table
        paramitemsale = {
                'table'                 : ['sale'],                
                'pk'                    : ['saleid'],
                'dateColumn'            : 'sdate',
                'pickup'                : [                    
                                          {
                                          'masterCBO'             : ['purchase.drugcategory#purchase.drugname'],
                                          'masterLookupItems'     : ['purchase.drugname'],
                                          'getvalfromothertableonlookupcboevent' : [],
                                          'masterPrimaryKeys'     : ['purchase.purchaseid'],
                                          'masterAutofillValues'  : ['purchase.drugminsaleprice','purchase.drugcode',
                                                                     'purchase.drugstock','purchase.unit',
                                                                     'purchase.gstrate'],                                         
                                          'condition'             : ['"purchase.drugstock > 0"'],
                                          },
                                                
                                          {                
                                          'masterCBO'             : ['customer.customercategory#customer.customercode'],
                                          'masterLookupItems'     : ['customer.customercode'],
                                          'getvalfromothertableonlookupcboevent' : [],
                                          'masterPrimaryKeys'     : ['customer.customerid'],
                                          'masterAutofillValues'  : ['customer.customername','customer.customermobile'],
                                          'condition'             : [],
                                          },
                                          ],
                'transItems'            : ['invoice','drugquantity','freight','marginpercent'],
                'expressions'           : [
                                          'drugprice = round(float(drugminsaleprice.get()) + float(drugminsaleprice.get())*float(marginpercent.get())/100,2)',
                                          'amount = round(float(drugprice.get())*float(drugquantity.get()),2)',
                                          'netamount = float(amount.get())+float(freight.get())'                                          
                                          ],
                'displayonlynoinsert'   : [],
                'invisible'             : [
                                          'customercategory = customercategory.get()', 
                                          'customercode = customercode.get()',
                                          'customername = customername.get()',                                          
                                          'customermobile = customermobile.get()',
                                          'drugcategory = drugcategory.get()',
                                          'drugcode = drugcode.get()',
                                          'drugname = drugname.get()',                                                                                    
                                          'unit = unit.get()',                                                                                    
                                          ],               
                'prefilled'             : ['freight=\"0.00\"','marginpercent=\"2\"'],
                'masterUpdates'         : [
                                          'purchase.drugstock=float(drugstock.get())-float(drugquantity.get())',
                                          'drug.drugtotalstock=float(drugtotalstock.get())-float(drugquantity.get())',
                                          ],
                }       
        transmenu.add_command(label="Item Sale", command=lambda: _transaction.createTransRootFrame(rootframe, paramitemsale))

        menubar.add_cascade(label="TRANSACTIONS", menu=transmenu)
        #====================================================================
        reportmenu = Menu(menubar, tearoff=0)
        
        rptparam1 = {'table':['drug'],'pk':['drugcode'],'cbo':['drugcategory.drugcategory']}
        reportmenu.add_command(label="Reports - All", command=lambda: _report.createSelectRootFrame(rootframe, rptparam1)) #use lambda to pass arguments to the function        

        reportmenu.add_separator()
        
        reportmenu.add_command(label="All Drugs", command=lambda: _reportCustom.alldrugs(rootframe))
        
        reportmenu.add_command(label="Drug Details", command=lambda: _reportCustom.drugdetails(rootframe))
        
        reportmenu.add_command(label="Custom SQL Report", command=lambda: _reportCustom.sql(rootframe))
        
        reportmenu.add_command(label="Available Drugs", command=lambda: _reportCustom.availabledrugs(rootframe))
        
        reportmenu.add_command(label="All Drug Categories", command=lambda: _reportCustom.alldrugcategories(rootframe))
        
        reportmenu.add_command(label="3 Most Sold Drugs", command=lambda: _reportCustom.threemostsolddrug(rootframe))

        reportmenu.add_command(label="Company Name", command=lambda: _reportCustom.companyname(rootframe))
        
        reportmenu.add_separator()
        
        reportmenu.add_command(label="Generate PDF", command=lambda: _pdfFileGeneration.invoicePurchase(rootframe))
        menubar.add_cascade(label="REPORT", menu=reportmenu)
        #====================================================================
        damenu = Menu(menubar, tearoff=0)
        
        daparam1 = {'table':['drug'],'pk':['drugcode'],'cbo':['drugcategory.drugcategory']}
        
        damenu.add_command(label="Data Analysis - Complete",
                    command=lambda: _dataAnalysisAndPlot.createDataAnalysisRootFrame(rootframe, daparam1))
        damenu.add_separator()
        
        damenu.add_command(label="GST Rates Of Categories",command=lambda:
                           _dataAnalysisAndPlotCustom.plotCategoryGSTRate(rootframe))
        
        damenu.add_command(label="Total Category Sales",command=lambda:
                           _dataAnalysisAndPlotCustom.plotCategorySales(rootframe))
        
        damenu.add_command(label="Drug Sales with Time",command=lambda:
                           _dataAnalysisAndPlotCustom.plotTimeSales(rootframe))

        damenu.add_command(label="Sales Of Drugs",command=lambda:
                           _dataAnalysisAndPlotCustom.plotDrugSales(rootframe))

        damenu.add_command(label="Compare 2 Drugs",command=lambda:
                           _dataAnalysisAndPlotCustom.plot2TimeDrugSales(rootframe))

        damenu.add_command(label="Compare Category Sales",command=lambda:
                           _dataAnalysisAndPlotCustom.plotMultipleTimeCategorySales(rootframe))
        
        #damenu.add_command(label="Data Analysis - Filter (Boolean Indexing)", command=lambda: dataAnalysisFilterData.dataAnalysis(db))
        menubar.add_cascade(label="DATA ANALYSIS", menu=damenu)
        #====================================================================
        dbmenu = Menu(menubar, tearoff=0)
        dbmenu.add_command(label="Export-Import Data", command=lambda: _dataExportImport.index(rootframe))
        dbmenu.add_separator()
        #newdatabase = "d1234"
        #dbmenu.add_command(label="Create Database", command=lambda: _database.createNewDatabase(rootframe,newdatabase))
        dbmenu.add_command(label="Create Table", command=lambda: _createMySQLTablesWithTestData.createTablesWithTestData(rootframe))
        dbmenu.add_command(label="Backup Database", command=lambda: _database.backupDatabase(rootframe))
        dbmenu.add_command(label="Alter Table", command=lambda: _database.alterTable(rootframe))
        '''
        dbmenu.add_separator()
        dbmenu.add_command(label="Restore Database", command=lambda: _database.restoreDatabase(rootframe))
        dbmenu.add_command(label="Reset Database", command=lambda: _database.resetDatabase(rootframe))
        dbmenu.add_command(label="Drop Table", command=donothing)
        '''
        menubar.add_cascade(label="DATABASE", menu=dbmenu)
        #====================================================================
        helpmenu = Menu(menubar, tearoff=0)
        helpmenu.add_command(label="About", command= _about.manual)
        helpmenu.add_command(label="Manual & Guide", command= _about.manual)
        helpmenu.add_command(label="Help", command= _about.help)
        helpmenu.add_command(label="Contact", command= _about.contact)
        menubar.add_cascade(label="HELP", menu=helpmenu)
        #====================================================================
        def clearcursorandconnection():
                #if cursor.open:
                #        cursor.close()
                if conn.open:
                        conn.close() #it will close its dependent cursor on its own
        def exitapp():
                #rootframe.quit() #NOT RECOMMENDED
                clearcursorandconnection()
                rootframe.destroy()
        exitmenu = Menu(menubar, tearoff=0)
        exitmenu.add_command(label="Close Cursor & Connection", command=clearcursorandconnection)
        exitmenu.add_command(label="Exit Application", command=exitapp) #rootframe.destroy
        menubar.add_cascade(label="Exit", menu=exitmenu)
        #====================================================================
        return menubar
#====================================================================================
