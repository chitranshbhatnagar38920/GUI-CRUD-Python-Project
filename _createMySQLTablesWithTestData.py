from _libraryAndDBConnection import * #includes database connection and cursor setting strings
#=============================================================================
def createTablesWithTestData(frame):
    cursor = conn.cursor()    
    #Creating Tables with Test Data: INVENTORY
    #---- 1. drug
    #---- 2. drugcategory
    #---- 3. employee
    #---- 4. employeecategory
    #---- 5. supplier
    #---- 6. suppliercategory
    #---- 7. gender
    #---- 8. country  
    #---- 9. unit
    #---- 10. customer
    #---- 11. customercategory
    #---- 12. businessname 
    #---- 13. purchase  
    #---- 14. sale     
    tbl = ''
    try:
        tkmsgbox.showinfo("MESSAGE!", "Creating tables with test data...", parent=frame)
        #================================================================
        # !IMPORTANT: date column should be named something
        # as 'transdate', 'pdate', 'sdate', 'doj' etc.
        # BUT NOT AS 'date'
        #================================================================
        tbl = 'drug'
        try:
                cursor.execute('DROP TABLE drug')
        except conn.Error as e:
                pass
        sql = """CREATE TABLE IF NOT EXISTS drug(
                    drugcode INT PRIMARY KEY AUTO_INCREMENT,
                    drugname VARCHAR(30) NOT NULL,
                    drugcategory VARCHAR(30),
                    unit VARCHAR(10),
                    gstrate DECIMAL(10,2) default 18.00,
                    drugtotalstock INT(5) default 0,
                    drugaverageprice DECIMAL(12,2) default 0
                    )"""
        cursor.execute(sql)
        sql = """INSERT INTO drug
                    (drugcode,drugname,drugcategory,unit,gstrate,drugtotalstock,drugaverageprice)
                    VALUES
                    (1,'Paracetamol (Acetaminophen)','Analgesics','mg',20,120,90.00),
                    (2,'Aspirin (Acetylsalicylic Acid)','Analgesics','mg',20,600,20.00),
                    (3,'Naproxen','Analgesics','mg',20,100,30.00),
                    (4,'Tramadol','Analgesics','mg',20,200,70.00),
                    (5,'Diclofenac','Analgesics','mg',20,500,100.00),
                    (6,'Saridon','Analgesics','mg',20,200,150.00),
                    (7,'Neosporin ointment','Antibacterials','ml',12,330,60.00),
                    (8,'Amoxicillin','Antibacterials','ml',12,350,80.00),
                    (9,'Azithromycin','Antibacterials','ml',12,130,100.00),
                    (10,'Ciprofloxacin','Antibacterials','ml',12,530,60.00),
                    (11,'Doxycycline','Antibacterials','ml',12,130,120.00),
                    (12,'Metronidazole','Antibacterials','ml',12,290,310.00),
                    (13,'Fluoxetine (Prozac)','Antidepressants','mL',18,400,450.00),
                    (14,'Escitalopram (Lexapro) (Zoloft)','Antidepressants','mL',18,110,120.00),
                    (15,'Paroxetine (Paxil)','Antidepressants','mL',18,210,50.00),
                    (16,'Citalopram (Celexa)','Antidepressants','mL',18,280,50.00),
                    (17,'Venlafaxine (Effexor)','Antidepressants','mL',18,60,150.00),
                    (18,'Glybera','Drug','mL',18,140,25.00),
                    (19,'Soliris (Eculizumab)','Drug','mL',18,130,95.00),
                    (20,'Zolgensma','Drug','mL',18,120,55.00),
                    (21,'Vitravene (Fomivirsen)','Drug','mL',18,120,375.00),
                    (22,'Clotrimazole','Antifungals','mg',12,80,980.00),
                    (23,'Fosmanogepix','Antifungals','mg',12,100,70.00),
                    (24,'Isavuconazole (Cresemba)','Antifungals','mg',12,450,620.00),
                    (25,'Nystatin Liposomal','Antifungals','mL',12,150,50.00),
                    (26,'Abreva (Docosanol)','Antivirals','mL',12,650,29.00),
                    (27,'Oseltamivir (Tamiflu)','Antivirals','mL',12,60,219.00),
                    (28,'Acyclovir (Zovirax)','Antivirals','mL',12,70,229.00),
                    (29,'Remdesivir (Veklury)','Antivirals','mL',12,150,374.00),
                    (30,'Amoxicillin','Antibiotics','mL',18,440,34.00),
                    (31,'Ciprofloxacin (Cipro)','Antibiotics','mL',18,210,134.00),
                    (32,'Azithromycin (Zithromax)','Antibiotics','mL',18,40,324.00),
                    (33,'Doxycycline (Vibramycin)','Antibiotics','mL',18,320,234.00),
                    (34,'Clindamycin (Cleocin)','Antibiotics','mL',18,142,214.00),
                    (35,'Phenobarbital (Luminal)','Barbiturates','mL',18,320,87.00),
                    (36,'Pentobarbital (Nembutal)','Barbiturates','mg',18,220,187.00),
                    (37,'Secobarbital (Seconal)','Barbiturates','mL',18,120,233.00),
                    (38,'Amobarbital (Amytal)','Barbiturates','mg',18,310,247.00),
                    (39,'Thiopental (Pentothal)','Barbiturates','mL',18,240,149.00),
                    (40,'Adderall','Controlled drugs','mg',18,290,95.00),
                    (41,'Fentanyl','Controlled drugs','mg',18,290,195.00),
                    (42,'Diazepam (Valium)','Controlled drugs','mg',18,290,235.00),
                    (43,'Hydrocodone (Vicodin, Norco)','Controlled drugs','mg',18,290,134.00),
                    (44,'Methadone','Controlled drugs','mg',18,290,64.33),
                    (45,'Sevoflurane','General anesthetics','mL',12,40,1000.00),
                    (46,'Chloroform','General anesthetics','mL',12,290,2600.00),
                    (47,'Isoflurane','General anesthetics','mL',12,254,2500.00),
                    (48,'Morphine','Opioid','mL',20,201,83.00),
                    (49,'Oxycodone','Opioid','mL',20,212,25.00),
                    (50,'Codeine','Opioid','mL',20,150,145.00),
                    (51,'Fentanyl','Opioid','mL',20,130,665.00),
                    (52,'Caffeine','Stimulant','mL',18.5,830,24.00),
                    (53,'Amphetamine (Adderall)','Stimulant','mL',18.5,840,215.00),
                    (54,'Methylphenidate (Ritalin, Concerta)','Stimulant','mL',18.5,70,125.00),
                    (55,'Nicotine','Stimulant','g',18.5,470,999.99),
                    (56,'Amiodarone','Antiarrhythmics','mg',19.5,650,185.00),
                    (57,'Lidocaine','Antiarrhythmics','mL',19.5,220,125.00),
                    (58,'Flecainide','Antiarrhythmics','mg',19.5,150,112.00),
                    (59,'Amiodarone','Antiarrhythmics','mL',19.5,410,65.00),
                    (60,'Sotalol','Antiarrhythmics','mg',19.5,130,95.00),
                    (61,'Procainamide','Antidiarrheals','mL',20,130,625.00),
                    (62,'Diphenhydramine (Benadryl)','Antihistamines','mL',12,120,85.00),
                    (63,'Cetirizine (Zyrtec)','Antihistamines','mL',12,150,105.00),
                    (64,'Loratadine (Claritin)','Antihistamines','mL',12,630,45.00),
                    (65,'Fexofenadine (Allegra)','Antihistamines','mL',12,230,375.00),
                    (66,'Delta-9-Tetrahydrocannabinol (THC)','Cannabinoids','mg',18,130,125.00),
                    (67,'Cannabidiol (CBD)','Cannabinoids','mL',18,160,95.00),
                    (68,'Cannabinol (CBN)','Cannabinoids','mg',18,172,235.00),
                    (69,'Cannabigerol (CBG)','Cannabinoids','mL',18,151,62.00),
                    (70,'Cannabichromene (CBC)','Cannabinoids','mg',18,450,155.00),
                    (71,'Donepezil (Aricept)','Cholinesterase inhibitors','mg',12,130,21.50),
                    (72,'Rivastigmine (Exelon)','Cholinesterase inhibitors','mL',12,170,123.50),
                    (73,'Galantamine (Razadyne)','Cholinesterase inhibitors','mg',12,181,261.50),
                    (74,'Tacrine (Cognex)','Cholinesterase inhibitors','mL',12,370,291.50),
                    (75,'Physostigmine','Cholinesterase inhibitors','mg',12,210,521.50),
                    (76,'Vicks Vaporub','Inhalant','g',18,180,16.00),
                    (77,'Vicks Inhaler','Inhalant','mL',18,190,61.00),
                    (78,'Vicks Inhaler Advanced','Inhalant','mL',18,120,52.00),
                    (79,'Vicks Balm','Inhalant','mL',18,156,84.00),
                    (80,'Zandu Balm Red','Inhalant','mL',18,220,36.00),
                    (81,'Zandu Balm Blue','Inhalant','qty',18,890,44.00),
                    (82,'Zandu Balm Green','Inhalant','qty',18,640,77.00),
                    (83,'Nepali Balm','Inhalant','qty',18,510,42.00),
                    (84,'LSD (Lysergic Acid Diethylamide)','Hallucinogen','mL',20,320,97.00),
                    (85,'Psilocybin','Hallucinogen','mL',20,736,57.00),
                    (86,'DMT (Dimethyltryptamine)','Hallucinogen','mL',20,120,997.00),
                    (87,'Mescaline','Hallucinogen','mL',20,220,297.00),
                    (88,'MDMA (Ecstasy/Molly)','Hallucinogen','mL',20,370,425.00),
                    (89,'Cyclophosphamide (Cytoxan)','Cytotoxic drugs','mL',20,140,525.00),
                    (90,'Doxorubicin (Adriamycin)','Cytotoxic drugs','mL',20,240,55.00),
                    (91,'Cisplatin','Cytotoxic drugs','mL',20,130,185.00),
                    (92,'Methotrexate','Cytotoxic drugs','mL',20,190,265.00),
                    (93,'Ibuprofen (Advil, Motrin)','Nonsteroidal anti-inflammatory drugs','mL',18.5,750,50.00),
                    (94,'Naproxen (Aleve, Naprosyn)','Nonsteroidal anti-inflammatory drugs','mL',18.5,230,250.00),
                    (95,'Celecoxib (Celebrex)','Nonsteroidal anti-inflammatory drugs','mL',18.5,150,520.00),
                    (96,'Ketoprofen (Orudis, Oruvail)','Nonsteroidal anti-inflammatory drugs','mL',18.5,170,510.00),
                    (97,'Mefenamic Acid (Ponstel)','Nonsteroidal anti-inflammatory drugs','mL',18.5,250,1150.00),
                    (98,'Piroxicam (Feldene)','Nonsteroidal anti-inflammatory drugs','mL',18.5,255,550.00),
                    (99,'Bandage','General','m',18,320,85.00),
                    (100,'Band-Aid','General','qty',18,320,15.00),
                    (101,'Tape','General','cm',18,120,20.50),
                    (102,'Cotton Buds','General','kg',18,120,4.99),
                    (103,'Surgical Masks','General','qty',18,360,10.00),
                    (104,'Zolgensma','GENE THERAPY DRUGS','Others...',12,5,175000000),
                    (105,'Luxturna (voretigene neparvovec)','GENE THERAPY DRUGS','Others...',12,6,70000000)
                    """
        cursor.execute(sql)
        tkmsgbox.showinfo("CONGRATS!", "Drug table created with a lot of test data.", parent=frame)
        #------------------------------------------------
        tbl = 'drugcategory'
        try:
                cursor.execute('DROP TABLE drugcategory')
        except conn.Error as e:
                pass
        sql = """CREATE TABLE IF NOT EXISTS drugcategory(
                    drugcategoryid INT PRIMARY KEY AUTO_INCREMENT,
                    drugcategory VARCHAR(30) UNIQUE,
                    gstrate decimal(10,2)
                    )"""
        cursor.execute(sql)
        sql = """INSERT INTO drugcategory
                    (drugcategory,gstrate)
                    VALUES
                    ('General',18),
                    ('Analgesics',20),
                    ('Antidepressants',18),
                    ('Drug',18),
                    ('Antibacterials',12),
                    ('Antifungals',12),
                    ('Antivirals',12),
                    ('Antibiotics',18),
                    ('Barbiturates',18),
                    ('Controlled drugs',18),
                    ('General anesthetics',12),
                    ('Opioid',20),
                    ('Stimulant',18.5),
                    ('Antiarrhythmics',19.5),
                    ('Antidiarrheals',20),
                    ('Antihistamines',12),
                    ('Cannabinoids',18),
                    ('Cholinesterase inhibitors',12),
                    ('Inhalant',18),
                    ('Hallucinogen',20),
                    ('Cytotoxic drugs',20),
                    ('Nonsteroidal anti-inflammatory drugs',18.5),
                    ('GENE THERAPY DRUGS',12)
                    """
        cursor.execute(sql)
        tkmsgbox.showinfo("KUDOS!", "drugcategory table created with test data.", parent=frame)
        #------------------------------------------------
        tbl = 'employee'
        try:
                cursor.execute('DROP TABLE employee')
        except conn.Error as e:
                pass
        sql = """CREATE TABLE IF NOT EXISTS employee(
                    employeeid INT PRIMARY KEY AUTO_INCREMENT, 
                    employeename VARCHAR(30) UNIQUE,
                    contact VARCHAR(30),
                    agedob date,
                    employeeaddress varchar(50),
                    employeecity VARCHAR(30),
                    employeestate VARCHAR(30),
                    country VARCHAR(30),
                    salaryrangePA DECIMAL(10,3),
                    employeecategory VARCHAR(30),
                    gender varchar(30)
                    )"""
        cursor.execute(sql)
        sql = """INSERT INTO employee 
                    (employeeid,employeename,contact,agedob,employeeaddress,employeecity,employeestate,country,salaryrangePA,employeecategory,gender)
                    VALUES
                    ('1', 'Ronak Arora','+91 9173544835',19921226,'Sector 09 Flat 4B Gokuldham Society','Patna','Bihar','India',300000.99,'Sweeper','F'),
                    ('2', 'Charu','+91 9273569835',20001204,'Sector 08 Flat 4A Meragaow Society','Rai Bareilly','Uttar Pradesh','India',480000.01,'Keeper','F'),
                    ('3', 'Sonika Chauhan','+91 9173546835',19990101,'Sector 08 Flat 3B Wild Crest','Vidisha','Madhya Pradesh','India',544000.00,'Keeper','F'),
                    ('4', 'Ajeet Rana','+91 9473566835',20010202,'Sector 06 Flat 1C World Green Society','Dispur','Assam','India',696969.69,'Keeper','M'),
                    ('5', 'Ananya','+91 9173596835',20040404,'Sector 04 Flat 5Z Protestant Society','Nainital','Uttarakhand','India',6500000.00,'Owner','F'),
                    ('6', 'XYZ Maksad','+91 8173569695',20001209,'Sector 03 Flat 2F Revolutionary Societyy','New Delhi','Delhi','India',800000.66,'Miscellaneous','F'),
                    ('7', 'Mulayam Yadav','+91 8273569695',20001109,'Sector 03 Flat 9J Madanmohan Society','Mumbai','Maharashtra','India',200000.66,'Keeper','M'),
                    ('8', 'Govind Singh','+91 8374499695',19941009,'Mall Road Calisthenics Society','Bengaluru','Karnataka','India',100000.66,'Keeper','M'),
                    ('9', 'Maarkaat Nochphaad','+91 9153015695',20000902,'Sector 02 Flat 1K Catholics Society','Jaipur','Rajasthan','India',300000.66,'Keeper','M'),
                    ('10', 'Naagin Itchchadhari','+91 8178452395',20000906,'GB Road Secret Underworld Society','Dehradun','Uttarakhand','India',500000.66,'Keeper','F'),
                    ('11', 'BaalVeer Season 2','+91 7645199695',19991201,'Sector 01 Flat 4S Preist Society','Nanakmatta','Uttarakhand','India',600000.66,'Keeper','M')
                    """
        cursor.execute(sql)
        tkmsgbox.showinfo("MESSAGE!", "employee table created with test data.", parent=frame)
        #------------------------------------------------
        tbl = 'employeecategory'
        try:
                cursor.execute('DROP TABLE employeecategory')
        except conn.Error as e:
                pass
        sql = """CREATE TABLE IF NOT EXISTS employeecategory(
                    employeecategoryid INT PRIMARY KEY AUTO_INCREMENT,
                    employeecategory VARCHAR(30) UNIQUE
                    )"""
        cursor.execute(sql)
        sql = """INSERT INTO employeecategory
                    (employeecategory) 
                    VALUES
                    ('Owner'),
                    ('Manager'),
                    ('Sweeper'),
                    ('Keeper'),
                    ('Miscellaneous')
                    """
        cursor.execute(sql)
        tkmsgbox.showinfo("MESSAGE!", "employeecategory table created with test data.", parent=frame)
        #------------------------------------------------
        tbl = 'supplier'
        try:
                cursor.execute('DROP TABLE supplier')
        except conn.Error as e:
                pass
        sql = """CREATE TABLE IF NOT EXISTS supplier(
                    supplierid INT PRIMARY KEY AUTO_INCREMENT,
                    suppliercode VARCHAR(30) UNIQUE,
                    suppliername VARCHAR(30),
                    suppliermobile VARCHAR(15),
                    suppliercategory VARCHAR(30)
                    )"""
        cursor.execute(sql)
        sql = """INSERT INTO supplier
                    (suppliercode,suppliername,suppliercategory,suppliermobile) 
                    VALUES
                    ('A','Ria Lifesciences Pvt Ltd.','Manufacturers','9411107750'),
                    ('B','Johnson & Johnson','Manufacturers','8211107750'),
                    ('C','Novartis','Manufacturers','8172107750'),
                    ('D','Roche','Manufacturers','5135607750'),
                    ('E','Merck & Co., Inc. (known as MSD outside the U.S. and Canada)','Manufacturers','9371107750'),
                    ('F','Cardinal Health','Wholesalers','8217612569'),
                    ('G','McKesson Corporation','Wholesalers','7163612569'),
                    ('H','AmerisourceBergen','Wholesalers','7272612569'),
                    ('I','Cencora (formerly known as Alliance Healthcare)','Wholesalers','8162512569'),
                    ('J','H.D. Smith','Wholesalers','7117612569'),
                    ('K','Mezorays Pharma','Wholesalers','7272189011'),
                    ('L','Sandoz (a Novartis division)','Exporters','7897262490'),
                    ('M','Teva Pharmaceuticals','Exporters','8291235490'),
                    ('N','Sun Pharmaceutical Industries','Exporters','8162235490'),
                    ('O','Nexford Healthcare Pvt Ltd.','Exporters','8161235490'),
                    ('P','Mylan (now part of Viatris)','Exporters','5226235493'),
                    ('Q','CVS Health','Importers','9412189928'),
                    ('R','Walgreens Boots Alliance','Importers','7412189011'),
                    ('S','Wal-Mart','Importers','9412189075'),
                    ('T','Mezorays Pharma','Importers','8172789011'),
                    ('U','Rite Aid','Importers','7262618901'),
                    ('V','Thermo Fisher Scientific','Others...','8272636627'),
                    ('W','Charles River Laboratories','Others...','7262636278'),
                    ('X','WuXi AppTec','Others...','9173638227'),
                    ('Y','Labcorp','Others...','7183363937'),
                    ('Z','Syneos Health','Others...','9172737283')
                    """
        cursor.execute(sql)
        tkmsgbox.showinfo("MESSAGE!", "supplier table created with test data.", parent=frame)
        #------------------------------------------------
        tbl = 'suppliercategory'
        try:
                cursor.execute('DROP TABLE suppliercategory')
        except conn.Error as e:
                pass
        sql = """CREATE TABLE IF NOT EXISTS suppliercategory(
                    suppliercategoryid INT PRIMARY KEY AUTO_INCREMENT,
                    suppliercategory VARCHAR(30) UNIQUE
                    )"""
        cursor.execute(sql)
        sql = """INSERT INTO suppliercategory
                    (suppliercategory) 
                    VALUES
                    ('Wholesalers'),
                    ('Manufacturers'),
                    ('Importers'),
                    ('Exporters'),
                    ('Others...')
                    """
        cursor.execute(sql)
        tkmsgbox.showinfo("MESSAGE!", "suppliercategory table created with test data.", parent=frame)
        #------------------------------------------------
        tbl = 'gender'
        try:
                cursor.execute('DROP TABLE gender')
        except conn.Error as e:
                pass
        sql = """CREATE TABLE IF NOT EXISTS gender(
                    genderid INT PRIMARY KEY AUTO_INCREMENT,
                    gender VARCHAR(30) UNIQUE
                    )"""
        cursor.execute(sql)
        sql = """INSERT INTO gender
                    (gender) 
                    VALUES
                    ('M'),
                    ('F'),
                    ('Transgender Male'),
                    ('Transgender Female'),
                    ('Non-Binary'),
                    ('Genderqueer'),
                    ('Genderfluid'),
                    ('Agender'),
                    ('Bigender'),
                    ('Pangender'),
                    ('Lesbian'),
                    ('Androgynous'),
                    ('Two-Spirit'),
                    ('Demiboy'),
                    ('Demigirl'),
                    ('Neutrois'),
                    ('Gay'),
                    ('Xenogender'),
                    ('Krigar'),
                    ('Intergender'),
                    ('Polygender'),
                    ('Omnigender'),
                    ('Bisexual'),
                    ('Third Gender'),
                    ('Cisgender'),
                    ('Graygender'),
                    ('Autigender'),
                    ('Aliagender'),
                    ('Maverique'),
                    ('Novigender'),
                    ('Gendervoid'),
                    ('Trixic'),
                    ('Trixic/Polygender'),
                    ('Feminine of Center'),
                    ('Masculine of Center'),
                    ('Multigender'),
                    ('Fluidgender'),
                    ('Gender Apathetic'),
                    ('Gender Non-Conforming'),
                    ('Gender Questioning'),
                    ('Boi'),
                    ('Gendermon'),
                    ('Genderless'),
                    ('Genderflux'),
                    ('Demiflux'),
                    ('Demigender'),
                    ('Androgyne'),
                    ('Intersex'),
                    ('Gendervague'),
                    ('Queer')
                    """
        cursor.execute(sql)
        tkmsgbox.showinfo("MESSAGE!", "gender table created with nice data.", parent=frame)
        #------------------------------------------------
        tbl = 'country'
        try:
                cursor.execute('DROP TABLE country')
        except conn.Error as e:
                pass
        sql = """CREATE TABLE IF NOT EXISTS country(
                    countyryid INT PRIMARY KEY AUTO_INCREMENT,
                    country varchar(50) UNIQUE
                    )"""
        cursor.execute(sql)
        sql = """INSERT INTO country
                    (country) 
                    VALUES
                    ('Afghanistan'),
                    ('Albania'),
                    ('Algeria'),
                    ('Andorra'),
                    ('Angola'),
                    ('Antigua and Barbuda'),
                    ('Argentina'),
                    ('Armenia'),
                    ('Australia'),
                    ('Austria'),
                    ('Azerbaijan'),
                    ('Bahamas'),
                    ('Bahrain'),
                    ('Bangladesh'),
                    ('Barbados'),
                    ('Belarus'),
                    ('Belgium'),
                    ('Belize'),
                    ('Benin'),
                    ('Bhutan'),
                    ('Bolivia'),
                    ('Bosnia and Herzegovina'),
                    ('Botswana'),
                    ('Brazil'),
                    ('Brunei'),
                    ('Bulgaria'),
                    ('Burkina Faso'),
                    ('Burundi'),
                    ('Cabo Verde'),
                    ('Cambodia'),
                    ('Cameroon'),
                    ('Canada'),
                    ('Central African Republic'),
                    ('Chad'),
                    ('Chile'),
                    ('China'),
                    ('Colombia'),
                    ('Comoros'),
                    ('Congo, Democratic Republic of the'),
                    ('Congo, Republic of the'),
                    ('Costa Rica'),
                    ('Croatia'),
                    ('Cuba'),
                    ('Cyprus'),
                    ('Czechia'),
                    ('Denmark'),
                    ('Djibouti'),
                    ('Dominica'),
                    ('Dominican Republic'),
                    ('Ecuador'),
                    ('Egypt'),
                    ('El Salvador'),
                    ('Equatorial Guinea'),
                    ('Eritrea'),
                    ('Estonia'),
                    ('Eswatini'),
                    ('Ethiopia'),
                    ('Fiji'),
                    ('Finland'),
                    ('France'),
                    ('Gabon'),
                    ('Gambia'),
                    ('Georgia'),
                    ('Germany'),
                    ('Ghana'),
                    ('Greece'),
                    ('Grenada'),
                    ('Guatemala'),
                    ('Guinea'),
                    ('Guinea-Bissau'),
                    ('Guyana'),
                    ('Haiti'),
                    ('Honduras'),
                    ('Hungary'),
                    ('Iceland'),
                    ('India'),
                    ('Indonesia'),
                    ('Iran'),
                    ('Iraq'),
                    ('Ireland'),
                    ('Israel'),
                    ('Italy'),
                    ('Jamaica'),
                    ('Japan'),
                    ('Jordan'),
                    ('Kazakhstan'),
                    ('Kenya'),
                    ('Kiribati'),
                    ('Korea, North'),
                    ('Korea, South'),
                    ('Kosovo'),
                    ('Kuwait'),
                    ('Kyrgyzstan'),
                    ('Laos'),
                    ('Latvia'),
                    ('Lebanon'),
                    ('Lesotho'),
                    ('Liberia'),
                    ('Libya'),
                    ('Liechtenstein'),
                    ('Lithuania'),
                    ('Luxembourg'),
                    ('Madagascar'),
                    ('Malawi'),
                    ('Malaysia'),
                    ('Maldives'),
                    ('Mali'),
                    ('Malta'),
                    ('Marshall Islands'),
                    ('Mauritania'),
                    ('Mauritius'),
                    ('Mexico'),
                    ('Micronesia'),
                    ('Moldova'),
                    ('Monaco'),
                    ('Mongolia'),
                    ('Montenegro'),
                    ('Morocco'),
                    ('Mozambique'),
                    ('Myanmar'),
                    ('Namibia'),
                    ('Nauru'),
                    ('Nepal'),
                    ('Netherlands'),
                    ('New Zealand'),
                    ('Nicaragua'),
                    ('Niger'),
                    ('Nigeria'),
                    ('North Macedonia'),
                    ('Norway'),
                    ('Oman'),
                    ('Pakistan'),
                    ('Palau'),
                    ('Panama'),
                    ('Papua New Guinea'),
                    ('Paraguay'),
                    ('Peru'),
                    ('Philippines'),
                    ('Poland'),
                    ('Portugal'),
                    ('Qatar'),
                    ('Romania'),
                    ('Russia'),
                    ('Rwanda'),
                    ('Saint Kitts and Nevis'),
                    ('Saint Lucia'),
                    ('Saint Vincent and the Grenadines'),
                    ('Samoa'),
                    ('San Marino'),
                    ('Sao Tome and Principe'),
                    ('Saudi Arabia'),
                    ('Senegal'),
                    ('Serbia'),
                    ('Seychelles'),
                    ('Sierra Leone'),
                    ('Singapore'),
                    ('Slovakia'),
                    ('Slovenia'),
                    ('Solomon Islands'),
                    ('Somalia'),
                    ('South Africa'),
                    ('South Sudan'),
                    ('Spain'),
                    ('Sri Lanka'),
                    ('Sudan'),
                    ('Suriname'),
                    ('Sweden'),
                    ('Switzerland'),
                    ('Syria'),
                    ('Taiwan'),
                    ('Tajikistan'),
                    ('Tanzania'),
                    ('Thailand'),
                    ('Timor-Leste'),
                    ('Turkey'),
                    ('Turkmenistan'),
                    ('Tuvalu'),
                    ('Uganda'),
                    ('Ukraine'),
                    ('United Arab Emirates'),
                    ('United Kingdom'),
                    ('United States'),
                    ('Uruguay'),
                    ('Uzbekistan'),
                    ('Vanuatu'),
                    ('Vatican City'),
                    ('Venezuela'),
                    ('Vietnam'),
                    ('Yemen'),
                    ('Zambia'),
                    ('Zimbabwe')
                    """
        cursor.execute(sql)
        tkmsgbox.showinfo("MESSAGE!", "Country table created with Proper data of 195 countries...", parent=frame)
        #------------------------------------------------
        tbl = 'unit'
        try:
                cursor.execute('DROP TABLE unit')
        except conn.Error as e:
                pass
        sql = """CREATE TABLE IF NOT EXISTS unit(
                    unitid INT PRIMARY KEY AUTO_INCREMENT,
                    unit varchar(30) UNIQUE
                    )"""
        cursor.execute(sql)
        sql = """INSERT INTO unit
                    (unit) 
                    VALUES
                    ('mL'),
                    ('mg'),
                    ('g'),
                    ('L'),
                    ('kg'),
                    ('m'),
                    ('cm'),
                    ('qty'),
                    ('Others...')
                    """
        cursor.execute(sql)
        tkmsgbox.showinfo("MESSAGE!", "unit table created with test data.", parent=frame)
        #------------------------------------------------
        
        tbl = 'customer'
        try:
                cursor.execute('DROP TABLE customer')
        except conn.Error as e:
                pass
        sql = """CREATE TABLE IF NOT EXISTS customer(
                    customerid INT PRIMARY KEY AUTO_INCREMENT,
                    customercode VARCHAR(10),
                    customername VARCHAR(60) UNIQUE,
                    customeraddress varchar(50),
                    customercity VARCHAR(30),
                    customerstate VARCHAR(30),
                    customeremail VARCHAR(30),
                    customermobile VARCHAR(16),
                    purchases varchar(60),
                    customercategory VARCHAR(30),
                    gender varchar(30)
                    )"""
        cursor.execute(sql)
        sql = """INSERT INTO customer
                    (customercode,customername,customermobile,customeraddress,customercity,customerstate,customeremail,purchases,customercategory,gender)
                    VALUES
                    ('A','Ria Malhotra','+91-9365453385',"Sisona, Rajput Nagar, Bareilly",'Nagpur','Uttarakhand','uilote@birlavidyamandir.com','9 * Saridon, 4 * Heat Bag','REGULAR','F'),
                    ('B','Shyam Guldastewala','+91-9369997345',"Bilona, Gamjam Nagar, Rai bareilly",'Sitarpur','Jaipur','lweigm@gmail.com','2 * Surgucal Mask, 2 * Corex','REGULAR','M'),
                    ('C','Girpade Gudarphate','+91-7834643753',"Gajona, Gadarpham Nagar, Hai bareilly",'Gajiapur','Telangana','shflque@gmail.com','1 * Torex, 2 * Corex','REGULAR','M'),
                    ('D','Madhuri Dixit','+91-8984357845',"Gadarphona, Gamjam Nagar, Rai bareilly",'Sitarpur','Uttar Pradesh','lweikm@gmail.com','5 * Chloroform, 2 * Zhandu Balm Red','REGULAR','F'),
                    ('E','Customer Special','+91-2984677845',"Gadarpur, Rajput Nagar, Kanpur",'Shahjahanpur','Uttar Pradesh','ldfsjhjm@yahoo.com','1 * Paracetamol, 3 * Cofsils','REGULAR','M'),
                    ('F','Malhotra Sahab','+91-8952678845',"Malaipur, Anaconda Nagar, Gai bareilly",'Hamjampur','Uttar Pradesh','fij@gmail.com','1 * Paracetamol, 2 * Tofsils','REGULAR','M'),
                    ('G','Sahib-E-Alam','+91-1234357845',"Doodhnagar, Malai Nagar, Zai Shillong",'Sitarpur','Rajasthan','qphfjm@yahoo.com','6 * Contact lens solution, 5 * Cleaning Cloth','REGULAR','M'),
                    ('H','Alfahad Malik','+91-5678357845',"Manipur, Rohit Nagar, Pilibhit",'Sitarganj','Madhya Pradesh','tgrfwjm@gmail.com','1 * Opium, 1 * Drug','OTHERS...','F'),
                    ('I','Pulkit Pokhral','+91-9101357845',"Patnapur, Mithu Nagar, Satellite",'Meenapur','Arunachal Pradesh','hnytrijm@hotmail.com','10 * Indigo, 22 * Opium','INTERDICTED','M'),
                    ('J','Ankit Tiwari','+91-1314357845',"Rajapur, Gethiya Nagar, Space Station",'Mainpur','Andhra Pradesh','aeaaaaaaijm@gmail.com','1 * N-95 Mask, 6 * Surgical Masks','EMPLOYEE','F'),
                    ('L','Prajjwal Rathore','+91-4465357845',"Gajapur, Banyan Nagar, Turka Tisor",'Gajapur','Telangana','jjjjweijm@hotmail.com','4 * Saridon, 2 * Chloroform','REGULAR','M'),
                    ('M','Saina Rathore','+91-1258795684',"Hodapur, Baliyan Nagar, Mantriscity",'Hodapur','Telangana','yujo@gmail.com','4 * Abc, 1 * Diclophenac','REGULAR','M'),
                    ('N','Merry Jilli','+91-3598757848',"Pointpur, Galiyan, Hellomyf",'Pointpur','Rajasthan','etyhnjuny@gmail.com','1 * Xyz, 3 * Iodoform','REGULAR','M'),
                    ('O','Terry Lilli','+91-1654584654',"Seduntant, Helios Nagar, Turka Tisor",'Koinpur','Uttarakhand','ewrtgrg@gmail.com','2 * Pqr, 2 * Norepinephrine','REGULAR','F'),
                    ('P','Cannot Reveal Name','+XX-XXXXXXXXXX','Polypur, Kondapur, Joint Furram','Ploypur','Uttarakhand','tgrfjy7j56@gmail.com','3 * Stu, 2 * Acetylcholine','VIP','M'),
                    ('Q','Private XQZ','+XX-XXXXXXXXXX',"Mantispur, Lava Nagar, Mallitalpur",'Mantispur','JnK','6657h6@gmail.com','4 * Vwx, 2 * Stamina Pills','VIP','M'),
                    ('R','Dolly Chai Wala','+91-6969696969',"Lofapur, Urmila Nagar, Logdgdugfepur",'Lofapur','Uttarakhand','7htyh6@gmail.com','6 * Yza, 2 * Nashe ki Dawa','REGULAR','M'),
                    ('S','Pav Bhaji Wali','+91-6966996666',"Urfipur, Konda Pur, Place Nagar",'Urfipur','Bihar','gsdg5t5@gmail.com','4 * Saridon, 2 * Jkl','INTERDICTED','F'),
                    ('T','IIT Momo Wala','+91-7544464466',"Anacondapur, Handersky Nagar, GG",'Anacondapur','Uttarakhand','ytj76u5@gmail.com','3 * Mno, 2 * Neend ki goli','REGULAR','F'),
                    ('U','MIT Vada Pav Wala','+91-6589745821',"Dkpur, Kasperskyy Nagar, BpColony",'Dkpur','Uttarakhand','gtrgaek677@gmail.com','2 * Fgo, 2 * Khasi ki dawa','REGULAR','M'),
                    ('V','UPSC Chai Wala','+91-3852496274',"Henrypur, HolyCow Nagar, Android Fallam",'Henrypur','Madhya Pradesh','gnhjjuyjh@hotmail.com','1 * Yfe, 2 * Positive Feedback Loop','REGULAR','M'),
                    ('W','MBBS International Bhikhari','+23-5784962105',"Follyupur, Crap Nagar, Bareilly",'Follypur','Andhra Pradesh','esgtytjuyb@hotmail.com','5 * Dawai, 2 * Chloroform','INTERDICTED','M'),
                    ('X','AIIMS Malai Chaap Wala','+91-6236549875',"Jhutpur, HolyCrap Nagar, Pbt.",'Jhutpur','Arunachal Pradesh','ertyhbgv@gmail.com','4 * Hellew, 2 * Xenon Poison','REGULAR','M'),
                    ('Y','Yusuf Dadar Haveli','+91-7539516482',"Sachpur, Dorm Nagar, Stg.",'Sachpur','Uttarakhand','565555534yg@gmail.com','4 * Medicine, 6 * Bromoform','REGULAR','F'),
                    ('Z','Melantina Getasdrool','+91-4563218972',"Kalapur, Room Nagar, Jaipur",'Kalapur','Uttar Pradesh','uuyjgye4@gmail.com','4 * Drug, 2 * Iodoform','REGULAR','F'),
                    ('AA','Hon. Kirti Kamal Bhardwaj','+91-6498810023',"Leelapur, House Nagar, Leelapur",'Subsidiarypur','Uttarakhand','54rtvbh78@hotmail.com','4 * Jailop, 2 * Hentyop','VIP','M'),
                    ('AB','Yadhirubhai Yambani','+91-6929012345',"Neelapur, Country Nagar, Neelapur",'Subsidiarypur','Uttarakhand','45trgreg@yahoo.com','3 * Saridon, 2 * Chloroform','VIP','M')
                    """
        cursor.execute(sql)
        tkmsgbox.showinfo("MESSAGE!", "customer table created with test data.", parent=frame)
        #------------------------------------------------
        tbl = 'customercategory'
        try:
                cursor.execute('DROP TABLE customercategory')
        except conn.Error as e:
                pass
        sql = """CREATE TABLE IF NOT EXISTS customercategory(
                    customercategoryid INT PRIMARY KEY AUTO_INCREMENT,
                    customercategory VARCHAR(30) UNIQUE
                    )"""
        cursor.execute(sql)
        sql = """INSERT INTO customercategory
                    (customercategory) 
                    VALUES
                    ('VIP'),
                    ('REGULAR'),
                    ('INTERDICTED'),
                    ('EMPLOYEE'),
                    ('OTHERS...')
                    """
        cursor.execute(sql)
        tkmsgbox.showinfo("MESSAGE!", "customercategory table created with test data.", parent=frame)
        #------------------------------------------------
        tbl = 'businessname'
        try:
                cursor.execute('DROP TABLE businessname')
        except conn.Error as e:
                pass
        sql = """CREATE TABLE IF NOT EXISTS businessname(
                    businessnameid INT PRIMARY KEY AUTO_INCREMENT,
                    businessname VARCHAR(30) UNIQUE
                    )"""
        cursor.execute(sql)
        sql = """INSERT INTO businessname
                    (businessname) 
                    VALUES
                    ('Opulent Pathway Pharmacy...')
                    """
        cursor.execute(sql)
        tkmsgbox.showinfo("MESSAGE!", "businessname table created with test data.", parent=frame)
        #------------------------------------------------
        tbl = 'purchase'
        #try:
        #        cursor.execute('DROP TABLE purchase')
        #except conn.Error as e:
        #        pass
        sql = """CREATE TABLE IF NOT EXISTS purchase(
                    purchaseid INT PRIMARY KEY AUTO_INCREMENT,
                    pdate DATE,
                    invoice VARCHAR(30),
                    suppliercategory VARCHAR(30),
                    suppliercode VARCHAR(30),
                    suppliername VARCHAR(30),
                    suppliermobile VARCHAR(30),
                    drugcode VARCHAR(30),
                    drugcategory VARCHAR(30),
                    drugname VARCHAR(30),
                    unit VARCHAR(30),
                    gstrate DECIMAL(5,2),
                    drugquantity DECIMAL(10,2),
                    drugstock DECIMAL(10,2),
                    drugprice DECIMAL(10,2),                    
                    amount DECIMAL(10,2),
                    freight DECIMAL(10,2),
                    gst DECIMAL(10,2),
                    netamount DECIMAL(10,2),
                    grandamount DECIMAL(10,2),
                    drugminsaleprice DECIMAL(10,2)
                    )"""
        cursor.execute(sql)
        tkmsgbox.showinfo("MESSAGE!", "purchase table created with test data.", parent=frame)
        #------------------------------------------------
        tbl = 'sale'
        #try:
        #        cursor.execute('DROP TABLE sale')
        #except conn.Error as e:
        #        pass
        sql = """CREATE TABLE IF NOT EXISTS sale(
                    saleid INT PRIMARY KEY AUTO_INCREMENT,
                    sdate DATE,
                    invoice VARCHAR(30),
                    customercategory VARCHAR(30),
                    customercode VARCHAR(30),
                    customername VARCHAR(30),
                    customermobile VARCHAR(30),
                    drugcode VARCHAR(30),
                    drugname VARCHAR(30),
                    drugcategory VARCHAR(30),
                    unit VARCHAR(30),
                    gstrate DECIMAL(5,2),
                    drugquantity DECIMAL(10,2),
                    drugprice DECIMAL(10,2),
                    amount DECIMAL(10,2),
                    marginpercent DECIMAL(10,2),
                    gst DECIMAL(10,2),
                    netamount DECIMAL(10,2),
                    freight DECIMAL(10,2),
                    grandamount DECIMAL(10,2)
                    )"""
        cursor.execute(sql)
        tkmsgbox.showinfo("MESSAGE!", "sale table created with test data.", parent=frame)
        #------------------------------------------------
        tkmsgbox.showinfo("SUCCESS MESSAGE!","ALL tables created successfully with dummy values.", parent=frame)
    except conn.Error as e:
                msg = "ERROR: "+str(e.args[0])+e.args[1]
                tk.messagebox.showinfo("MESSAGE", "TABLE: "+tbl+"\n"+msg, parent=frame)
#=============================================================================
# standalone start
#=============================================================================
if __name__ == "__main__":
    rootframe = Tk() 
    createDatabaseFrame(rootframe)
#=============================================================================
