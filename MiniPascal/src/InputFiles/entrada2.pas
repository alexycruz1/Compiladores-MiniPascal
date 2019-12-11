PROGRAM Ordenamiento;
var exit: boolean;
Var x,nada:Integer;
VAR choice:char;
begin
    choice := 'y';
    write('Quiere ver otra secuencia? ingrese Y/y para si, cualquier otra letra para no',nada);
    read(choice);
    write('Ingrese un numero',nada);
    read(x);
    {--------------While----------------------------}
    WHILE 4 < 2 or 4>100 do
        BEGIN
            if x > nada  then
                    BEGIN
                        x:=0;
                        {---------------------Repeat------------------}
                        repeat
                            BEGIN
                                write('de menor a mayor es ',x);
                                x := 9 - 1;
                            END
                        until x = 100;
                        {---------------------------------------------}
                        {---------------------For---------------------}
                        for a := 10  to 20 do
   
                            begin
                                write('value of a: ', a);
                            end;
                        {---------------------------------------------}
                        exit := 1;
                    END
            else
                exit := 0;
        END;
    {-------------------------------------------}
end.