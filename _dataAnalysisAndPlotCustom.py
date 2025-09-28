from _reportDataAnalysisPlotCustomFunctions import *
#-----------------------------------------------------------------------------
# User Defined Plots and Data Analysis
#-----------------------------------------------------------------------------

def plotCategoryGSTRate(frame):
        try:
                sql = "select drugcategory, gstrate from drugcategory"
                charttype = 'bar' #'plot','bar','hist'
                xcol = 'drugcategory'
                ycol = 'gstrate'
                title = 'GST Rates of Various Medicinal Categories:'
                xlabel = 'CATEGORY of DRUG'
                ylabel = 'GST RATE'
                xticks = ''
                yticks = ''
                executeSelectQueryForPlotAndDA(frame, sql, charttype, title, xlabel, ylabel, xticks, yticks, xcol, ycol)
        except conn.Error as e:
                msg = "ERROR: "+str(e.args[0])+e.args[1]
                tk.messagebox.showinfo("MESSAGE", msg, parent=frame)
                
#=============================================================================
def plotCategorySales(frame):
        try:
                sql = "select drugcategory, sum(drugquantity) from sale group by drugcategory"
                charttype = 'bar'
                xcol = 'drugcategory'
                ycol = 'sum(drugquantity)'
                title = 'Sales of Various Drug Categories:'
                xlabel = 'CATEGORY of DRUG'
                ylabel = 'TOTAL SALES'
                xticks = ''
                yticks = ''
                executeSelectQueryForPlotAndDA(frame, sql, charttype, title, xlabel, ylabel, xticks, yticks, xcol, ycol)
        except conn.Error as e:
                msg = "ERROR: "+str(e.args[0])+e.args[1]
                tk.messagebox.showinfo("MESSAGE", msg, parent=frame)
                

#=============================================================================
def plotTimeSales(frame):
        try:
                frame = Toplevel()
                sql = "select drugname from sale"
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
                #COPY#
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
                        sql = "SELECT drugquantity, sdate FROM sale where drugname='"+name+"'"
                        charttype = 'plot'
                        xcol = 'sdate'
                        ycol = 'drugquantity'
                        title = 'Sale Trend of Drugs:'
                        xlabel = 'DATE'
                        ylabel = 'SALES'
                        xticks = ''
                        yticks = ''
                        executeSelectQueryForPlotAndDA(frame, sql, charttype, title, xlabel, ylabel, xticks, yticks, xcol, ycol)      
                nameCBO.bind("<<ComboboxSelected>>", nameCBOSelectedEvent)
                Label(frame, text=" ").grid(row=3, column=3, sticky='NE')
        except conn.Error as e:
                msg = "ERROR: "+str(e.args[0])+e.args[1]
                tk.messagebox.showinfo("MESSAGE", msg, parent=frame)
                

#=============================================================================
def plotDrugSales(frame):
        try:
                sql = "select drugname, sum(drugquantity) from sale group by drugcategory"
                charttype = 'bar'
                xcol = 'drugname'
                ycol = 'sum(drugquantity)'
                title = 'Sales of Various Drugs:'
                xlabel = 'NAME of DRUG'
                ylabel = 'TOTAL SALES'
                xticks = ''
                yticks = ''
                executeSelectQueryForPlotAndDA(frame, sql, charttype, title, xlabel, ylabel, xticks, yticks, xcol, ycol)
        except conn.Error as e:
                msg = "ERROR: "+str(e.args[0])+e.args[1]
                tk.messagebox.showinfo("MESSAGE", msg, parent=frame)
                

#=============================================================================
def plot2TimeDrugSales(frame):

        try:
                sql = []
                ycol = []
                legend = []
                charttype = ''
                title = ''
                xlabel = ''
                ylabel = ''
                xticks = ''
                yticks = ''
                xcol = ''
                
                sql1 = "select drugname from sale"
                df = executeSelectQueryAndReturnDF(frame, sql1)
           

                for i in range(2):
                        frame = Toplevel()
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
                                
                                s="SELECT sum(drugquantity), month(sdate) FROM sale WHERE drugname='"+name+"' GROUP BY month(sdate)"
                                #print("S: ",s)
                                sql.append(s)
                                #print("SQL: ",sql)
                                legend.append(name)

                                charttype = 'bar'
                                xcol = 'month(sdate)'
                                ycol.append('sum(drugquantity)')
                                title = 'Both Drugs Juxtaposed:'
                                xlabel = 'MONTH'
                                ylabel = 'SALES'
                                xticks = ''
                                yticks = ''
                                #executeSelectQueryForPlotAndDA(frame, sql, charttype, title, xlabel, ylabel, xticks, yticks, xcol, ycol1)      


                                if len(sql)==2:

                                        print("SQL Outside: ",sql)
                                        executeSelectQueryForMultiplePlotAndDA(frame, sql, charttype, title, xlabel, ylabel, xticks, yticks, xcol, ycol, legend)    

                        nameCBO.bind("<<ComboboxSelected>>", nameCBOSelectedEvent)
                        Label(frame, text=" ").grid(row=3, column=3, sticky='NE')
        except conn.Error as e:
                msg = "ERROR: "+str(e.args[0])+e.args[1]
                tk.messagebox.showinfo("MESSAGE", msg, parent=frame)
                

#=============================================================================
'''           VERY DIFFICULT WORK IN PROGRESS!!!!!!!!!

def plotMultipleTimeCategorySales(frame):

        try:
                sql = []
                ycol = []
                legend = []
                charttype = ''
                title = ''
                xlabel = ''
                ylabel = ''
                xticks = ''
                yticks = ''
                xcol = ''
                
                sql1 = "SELECT drugquantity, sdate FROM sale WHERE GROUP BY sdate"
                sql2 = 'select count(distinct(drugcategory)) from sale'
                sql3 = 'select distinct(drugcategory) from sale'
                df1 = executeSelectQueryAndReturnDF(frame, sql1)
                df2 = executeSelectQueryAndReturnDF(frame, sql2)
                df3 = executeSelectQueryAndReturnDF(frame, sql3)
                print(df2.iloc[0,0])
                numrows = df2.iloc[0,0]
                print('NUM ROWS: ',numrows)
                frame = Toplevel()
                
                
                for i in range(numrows):
                        
                        name = event.widget.get()
                        
                        s="SELECT drugquantity, sdate FROM sale WHERE GROUP BY sdate"
                        #print("S: ",s)
                        sql.append(s)
                        #print("SQL: ",sql)
                        legend.append(name)

                        charttype = 'plot'
                        xcol = 'sdate'
                        ycol.append('sum(drugquantity)')
                        title = 'Title Here:'
                        xlabel = 'DATE'
                        ylabel = 'SALES'
                        xticks = ''
                        yticks = ''
                        #executeSelectQueryForPlotAndDA(frame, sql, charttype, title, xlabel, ylabel, xticks, yticks, xcol, ycol1)      


                        if len(sql)==numrows:

                                print("SQL Outside: ",sql)
                                executeSelectQueryForMultiplePlotAndDA(frame, sql, charttype, title, xlabel, ylabel, xticks, yticks, xcol, ycol, legend)    
        except conn.Error as e:
                msg = "ERROR: "+str(e.args[0])+e.args[1]
                tk.messagebox.showinfo("MESSAGE", msg, parent=frame)
'''
        
#=============================================================================
def plotMultipleTimeCategorySales(frame):

        try:
                import matplotlib.pyplot as plt
                import numpy as np
                
                sql1 = "SELECT DISTINCT drugcategory FROM sale"
                df1 = executeSelectQueryAndReturnDF(frame, sql1)
                allcategories = list(df1['drugcategory'])
                
                sql = []
                df = []
                for i in range(len(allcategories)):
                        name = allcategories[i]
                        sql = "SELECT  sdate, drugquantity FROM sale WHERE drugcategory = '"+name+"' ORDER BY sdate"
                        df.append(executeSelectQueryAndReturnDF(frame, sql))
                
                print('\n\ndf1:\n\n',df1,'\n\ndf:\n\n',df)
                
                plt.title('All Categories Juxtaposed:')
                plt.xlabel('DATE')
                plt.ylabel('SALES')
                plt.yticks(np.arange(0,101,10))
                print('LEGEND:',allcategories,type(allcategories))
                plt.legend(['General', 'Inhalant', 'Analgesics', 'Antibacterials', 'Antidepressants', 'Antihistamines', 'Opioid', 'Barbiturates', 'GENE THERAPY DRUGS', 'Stimulant', 'Drug', 'Antibiotics', 'Antifungals', 'General anesthetics', 'Cholinesterase inhibitors', 'Hallucinogen', 'Antivirals'])
                for j in range(len(allcategories)):
                        plt.plot(df[j]['sdate'],df[j]['drugquantity'])
                plt.show()
                
        except conn.Error as e:
                msg = "ERROR: "+str(e.args[0])+e.args[1]
                tk.messagebox.showinfo("MESSAGE", msg, parent=frame)
                
#=============================================================================
      
def donothing():
        pass

#=============================================================================

param = {'table':['drug'],'pk':['drugcode'],'cbo':['drugcategory.drugcategory']}
if __name__ == "__main__":
        rootframe = Tk()
        plotCategoryGSTRate(rootframe)
        
#=============================================================================

