from _reportDataAnalysisPlotCustomFunctions import *
#-----------------------------------------------------------------------------
# User Defined Reports
#-----------------------------------------------------------------------------
# report 1
#-----------------------------------------------------------------------------
def alldrugs(rootframe):
        frame = Toplevel()
        sql = "select drugname from drug"
        executeSelectQuery(frame, sql)
        
#-----------------------------------------------------------------------------
def availabledrugs(rootframe):
        frame = Toplevel()
        sql = "select distinct drugname from purchase"
        executeSelectQuery(frame, sql)
        
#-----------------------------------------------------------------------------
def companyname(rootframe):
        frame = Toplevel()
        sql = "select businessname from businessname"
        executeSelectQuery(frame, sql)

#-----------------------------------------------------------------------------
def alldrugcategories(rootframe):
        frame = Toplevel()
        sql = "select drugcategory from drugcategory"
        executeSelectQuery(frame, sql)

#-----------------------------------------------------------------------------
def threemostsolddrug(rootframe):
        frame = Toplevel()
        sql = "select * from sale order by drugquantity desc limit 3"
        executeSelectQuery(frame, sql)

#-----------------------------------------------------------------------------
def drugdetails(rootframe):
        frame = Toplevel()
        sql = "select drugname from drug"
        df = executeSelectQueryAndReturnDF(frame, sql)
        # GUI 
        # drop-down/pick-up list
        Label(frame, text=" ").grid(row=1, column=1, sticky='NE')
        namevar = StringVar()
        namelookupvalues = df['drugname'].tolist()
        Label(frame, text="Drug Name").grid(row=2, column=1, sticky='NE')
        nameCBO = Combobox(frame, name='namecbo', width=30, textvariable=namevar)
        nameCBO.grid(row=2, column=2)
        nameCBO['values'] = namelookupvalues
        nameCBO.current(0)
        def nameCBOSelectedEvent(event):
                name = event.widget.get()
                sql = "SELECT * FROM drug where drugname='"+name+"'"
                executeSelectQuery(frame, sql)        
        nameCBO.bind("<<ComboboxSelected>>", nameCBOSelectedEvent)
        Label(frame, text=" ").grid(row=3, column=3, sticky='NE')
#-----------------------------------------------------------------------------
# report 3
#-----------------------------------------------------------------------------
def sql(rootframe):
        frame = Toplevel()
        Label(frame, text=" ").grid(row=1, column=1, sticky='NE')
        Label(frame, text="SQL Query").grid(row=2, column=1, sticky='NE')
        sqlTXT = Entry(frame, width=30)
        sqlTXT.grid(row=2, column=2, sticky='NW')
        def clickButtonEvent():
                sql = sqlTXT.get()
                executeSelectQuery(frame, sql)        
        Button(frame, text="Submit", command=clickButtonEvent).grid(row=3, column=2, sticky='NW')
        Label(frame, text=" ").grid(row=4, column=3, sticky='NE')
        
#=============================================================================
# standalone start for code testing - to run this file independently
#=============================================================================
param = {'table':['drug'],'pk':['drugcode'],'cbo':['drugcategory.drugcategory']}
if __name__ == "__main__":
        rootframe = Tk()
        #createSelectRootFrame(rootframe, param)
        #rptItemDetail(rootframe)                        # report 1
        #rptItemDetailConditionalPickupList(rootframe)       # report 2
        rptItemDetailConditionalTextbox(rootframe)          # report 3
        
#=============================================================================

