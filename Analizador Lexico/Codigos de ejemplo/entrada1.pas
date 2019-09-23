PROGRAM EJER37;
 VAR num1,num2:INTEGER=10;
 VAR num3:INTEGER;
 {--------------Records------------------}
 VAR books = RECORD
   title:INTEGER;
   bookID:boolean;
 END;
{---------------Funcion------------------}
 FUNCTION max(num1, num2:INTEGER):INTEGER;
  VAR result:INTEGER;
  BEGIN
   IF (4 > 5) THEN
      result := 15
   ELSE
      result := 10;
   max := 11;
  END;
{-----------------------------------------}
{-----------------Procedure---------------}
procedure foo;
begin
   write('Estamos dentro del procedimiento',variable);
end;
{-----------------------------------------}

 BEGIN
  num1:=num2;
  num1:=num2+10;
  num1:=num2+num1;
  num1:=10;
  WHILE num1 > (1>5) DO
   BEGIN
    WRITE('Esta es la iteracion', num1);
    num1:=2;
   END;
END.