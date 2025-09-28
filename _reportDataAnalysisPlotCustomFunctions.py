# general functions for custom report, data analysis and plot files
from _libraryAndDBConnection import *
#-----------------------------------------------------------------------------
'''
def createPandasTableFRM(frame, df):
        pandasTableFRM = Frame(frame)
        pandasTableFRM.grid(row=0, column=0, sticky='NW')
        pt = Table(pandasTableFRM, dataframe=df, showstatusbar=True)  #width=w, height=h,
        pt.cellbackgr = 'orange'
        pt.grid()
        pt.show()
'''
#-----------------------------------------------------------------------------
def createPandasTableFRM(frame, df):
        w, h = frame.winfo_screenwidth()-120, frame.winfo_screenheight()-160
        w = w*60/100
        '''
        topFRM = Toplevel(height=h, width=w)
        pandasTableFRM = Frame(topFRM)
        '''
        pandasTableFRM = Toplevel()
        #pandasTableFRM.grid(row=1, column=1, sticky='NW')
        pt = Table(pandasTableFRM, dataframe=df, showtoolbar=True, width=w, showstatusbar=True)
        pt.cellbackgr = 'orange'
        pt.grid()
        pt.show()
#-----------------------------------------------------------------------------
def executeSelectQuery(frame, sql):
        try:
                #sql = "select * from item, customer"
                cursor.execute(sql)
                data = cursor.fetchall()
                df = pd.DataFrame(data)
                createPandasTableFRM(frame, df)
        except conn.Error as e:
                msg = "ERROR: "+str(e.args[0])+e.args[1]
                tk.messagebox.showinfo("MESSAGE", msg, parent=frame)
#-----------------------------------------------------------------------------
def executeSelectQueryAndReturnDF(frame, sql):
        try:
                cursor = conn.cursor()
                cursor.execute(sql)
                data = cursor.fetchall()
                df=pd.DataFrame(data)
                return df
        except conn.Error as e:
                msg = "ERROR: "+str(e.args[0])+e.args[1]
                tk.messagebox.showinfo("MESSAGE", msg, parent=frameDisplayData)
#-----------------------------------------------------------------------------
def executeSelectQueryForPlotAndDA(frame, sql, charttype, title, xlabel, ylabel, xticks, yticks, xcol, ycol):
        try:
                cursor.execute(sql)
                data = cursor.fetchall()
                df = pd.DataFrame(data)
                #createPandasTableFRM(frame, df)
                createPlotFRM(frame, df, charttype, title, xlabel, ylabel, xticks, yticks, xcol, ycol) #ycol not required for 'hist'
                createStatsFRM(frame, df)
        except conn.Error as e:
                msg = "ERROR: "+str(e.args[0])+e.args[1]
                tk.messagebox.showinfo("MESSAGE", msg, parent=frame)
                
#-----------------------------------------------------------------------------
def executeSelectQueryForMultiplePlotAndDA(frame, sql, charttype, title,
                                           xlabel, ylabel, xticks, yticks, xcol, ycol, legend):
        #Sql, legend and ycol are 3 lists...

        print(sql[0])
        print(sql[1])
        df = []
        try:
                for i in range(2):
                        cursor.execute(sql[i])
                        data = cursor.fetchall()
                        df.append(pd.DataFrame(data))
                        #createPandasTableFRM(frame, df)
                        #print('\n\nDF: ',df[i])

                createMultiplePlotFRM(frame, df, charttype, title, xlabel, ylabel, xticks, yticks, xcol, ycol, legend) #ycol not required for 'hist'
                #createStatsFRM(frame, df)
        except conn.Error as e:
                msg = "ERROR: "+str(e.args[0])+e.args[1]
                tk.messagebox.showinfo("MESSAGE", msg, parent=frame)
                
#-----------------------------------------------------------------------------
def createPlotFRM(frame, df, charttype, title='', xlabel='', ylabel='', xticks='', yticks='', xcol='', ycol=''):

        #plotFRM = Frame(frame)
        #plotFRM.grid(row=0, column=1, sticky='NW')

        plotFRM = Toplevel()
        plt.clf()
        fig = plt.figure(1)
        x = df[xcol].tolist()
        y = df[ycol].tolist()


        print("X:",x,"  ",len(x))
        print("Y:",y,"  ",len(y))
        
        plt.xlabel(xlabel)
        plt.ylabel(ylabel)
        plt.title(title)
        plt.xticks(rotation = 90)
        plt.tight_layout()

        if charttype=='plot':
                #plt.figure(figsize=(50,60))
                plt.plot(x,y)
        elif charttype=='bar':
                #plt.figure(figsize=(100,600))
                plt.bar(x,y)
        '''elif charttype=='hist':
                plt.xticks(rotation = 90)
                plt.hist(x,y)'''

        canvas = FigureCanvasTkAgg(fig, master=plotFRM)
        plot_widget = canvas.get_tk_widget()
        plot_widget.grid(row=0, column=0)
#-----------------------------------------------------------------------------
def createMultiplePlotFRM(frame, df, charttype, title='', xlabel='', ylabel='', xticks='', yticks='', xcol='', ycol='', legend=''):

        #plotFRM = Frame(frame)
        #plotFRM.grid(row=0, column=1, sticky='NW')

        plotFRM = Toplevel()
        plt.clf()
        fig = plt.figure(1)

        firstycol = ycol[0]
        secondycol = ycol[1]
        x = df[0][xcol].tolist()
        y1 = df[0][firstycol].tolist()
        y2 = df[1][secondycol].tolist()


        print("X:",x)
        print("Y1:",y1)
        print("Y2:",y2)

        #plt.bar(x,y1)
        #plt.bar(x,y2)
        #print("PLOT\n")
        #plt.show()
        
        plt.xlabel(xlabel)
        plt.ylabel(ylabel)
        plt.title(title)
        plt.xticks(rotation = 90)
        plt.tight_layout()

        if charttype=='plot':
                plt.plot(x,y1)
                plt.plot(x,y2)
                #plt.tight_layout() #yeeeeeee
                
        elif charttype=='bar':
                xaxis = np.arange(x[0],x[len(x)-1]+1)
                plt.bar(xaxis+0.00,y1,width=0.25)
                plt.bar(xaxis+0.25,y2,width=0.25)
                plt.xticks(xaxis)
                plt.legend(legend)
                #plt.tight_layout() #yeeeeeee

        canvas = FigureCanvasTkAgg(fig, master=plotFRM)
        plot_widget = canvas.get_tk_widget()
        plot_widget.grid(row=0, column=0)

#-----------------------------------------------------------------------------
def createBarFRM(frame, df, xcol, ycol):
        pass
#-----------------------------------------------------------------------------
def createHistFRM(frame, df, datalist):
        pass
#-----------------------------------------------------------------------------
def createStatsFRM(frame, df):
        statsFRM = Frame(frame)
        statsFRM.grid(row=1, column=1, sticky='NW')

        r1=0
        c1=0
        # sample data - head
        def headButtonEvent():
                topframe = Toplevel()
                d=df.head(2)
                pt = Table(topframe, dataframe=d, showstatusbar=True)  
                pt.show()
        Button(statsFRM, text="Head Data", width=20, command=headButtonEvent).grid(row=r1, column=c1, sticky='NW')
        # sample data - tail
        r1 = r1+1
        def tailButtonEvent():
                topframe = Toplevel()
                d=df.tail(2)
                pt = Table(topframe, dataframe=d, showstatusbar=True)  
                pt.show()
        Button(statsFRM, text="Tail Data", width=20, command=tailButtonEvent).grid(row=r1, column=c1, sticky='NW')
        # describe
        r1 = r1+1
        def describeButtonEvent():
                topframe = Toplevel()
                d=df.describe().round(2)
                d.reset_index(level=0, inplace=True)
                #set index as a column in the dataframe so that it gets displayed in the pt table
                pt = Table(topframe, dataframe=d, showstatusbar=True)  
                pt.show()
        Button(statsFRM, text="Data Describe", width=20, command=describeButtonEvent).grid(row=r1, column=c1, sticky='NW')
