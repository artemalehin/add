import os
import ipaddress

def MAIN():
        def clear():
                print('')
                print('')
                print('')
                print('')
                print('')
                print('')
                print('')
                print('')
                print('')
                print('')
                print('')
                print('')
                print('')
                print('')
                print('')
                print('')
                print('')
                print('')
                print('')
                print('')
                print('')
                print('')
                print('')
                print('')
                print('')
                print('')
                print('')
                print('')
                print('')

        def logo():
                print('','','','','','By Artem Alehin')
        def mains():
                print('1 - Узнать данные')     
                date = int(input('Укажите цифру: ')) 
                if date == 1:
                        clear()
                        logo()
                        # filename variables
                        filename = 'file.txt'
                        newfilename = 'result.txt'

                        # read the file
                        if os.path.exists(filename):
                                data = open(filename,'r')
                                bulkemails = data.read()
                        else:
                                print ("File not found.")
                                raise SystemExit

                        # regex = something@whatever.xxx
                        r = re.compile(r'(\b[\w.]+@+[\w.]+.+[\w.]\b)')
                        results = r.findall(bulkemails)
                        emails = ""
                        for x in results:
                                emails += str(x)+"\n"

                        # function to write file
                        def writefile():
                                f = open(newfilename, 'w')
                                f.write(emails)
                                f.close()
                                print ("File written.")
                        
                else:
                        print('Введите цифру из списка')
                        clear()
                        logo()
                        return mains()
        mains()

MAIN()
