

#############################################################################################

#### Флаги

#----------------------------------------------------------------------#
#    Пока флаг находиться в состоянии True - программа выполняется     #
#----------------------------------------------------------------------#


prompt = "\n Вы можете ввести значения   "       #  опрееляем сообщение для пользователя
prompt += "\n Либо введите 'quit' для выхода: "

active = True                   # создаем флаг active
while active:                   # пока переменная равна True цикл выполняется
    message = input(prompt)     # ожидаем ввода и записываем ввод в message

    if message == 'quit':       # Если было введено 'quit' 
        active = False          # Флаг равен False
    else:                       # Иначе
        print(message)          # Выводим ввод пользователя