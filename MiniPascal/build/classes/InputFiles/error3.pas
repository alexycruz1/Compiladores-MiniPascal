var exit: boolean;
Var x,nada:Integer;
VAR choice:char;
begin
    write('Quiere ver otra secuencia? ingrese Y/y para si, cualquier otra letra para no',nada);
    read(choice);
    write('Ingrese un numero',nada);
    read(x);

    WHILE 4 < 2 or 4>100 do
        BEGIN
            if 4 > 1  then
                    BEGIN
                        x:=100;
                        repeat
                            {Falta el BEGIN}
                                write('de mayor a menor es ',x);
                                x := 9 - 1;
                            {Falta el END}
                        until x = 0;

                        x:=0;
                        repeat
                            BEGIN
                                write('de menor a mayor es ',x);
                                x := 9 - 1;
                            END
                        until x = 100;
                        exit := 1;
                    END
            else
                exit := 0;
        END;
    
end.
