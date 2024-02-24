SET SERVEROUTPUT ON;

-- EXERCICIO 01 = Calculo do novo sálario minimo

DECLARE
    SALARIO NUMBER := 1412;
    CALCULO NUMBER;
    NOVO_SALARIO NUMBER;
BEGIN
    CALCULO := SALARIO * 0.25;
    NOVO_SALARIO := SALARIO + CALCULO;
    dbms_output.put_line('Novo sálario: '||NOVO_SALARIO|| 'R$');
END;

-- EXERCICIO 02 = Dolar para reais

DECLARE
    VALOR NUMBER := &valor;
    CALCULO NUMBER;
BEGIN
    CALCULO := VALOR * 5;
    dbms_output.put_line(VALOR|| 'Dólar -> Reais: '||CALCULO);
END;

-- EXERCICIO 03 = PARCELAMENTO DE UM CARRO em 10 vezes

DECLARE
    CARRO NUMBER := &valor;
BEGIN
    CARRO := (CARRO/10)*1.03;
    dbms_output.put_line('Valor de cada parcela: ' ||CARRO);
END;

-- EXERCICIO 04 = MUITO PARCELAMENTO

DECLARE
    VALOR NUMBER := &valor;
    PARCELAMENTO1 NUMBER;
    PARCELAMENTO2 NUMBER;
    PARCELAMENTO3 NUMBER;
    ENTRADA NUMBER;
BEGIN
    ENTRADA := VALOR / 1.20;
    PARCELAMENTO1 := round((ENTRADA/6)*1.10);
    PARCELAMENTO2 := round((ENTRADA/12)*1.15);
    PARCELAMENTO3 := round((ENTRADA/18)*1.20);
    dbms_output.put_line('[6%] Valor de cada parcela: ' ||PARCELAMENTO1);
    dbms_output.put_line('[12%] Valor de cada parcela: ' ||PARCELAMENTO2);
    dbms_output.put_line('[18%] Valor de cada parcela: ' ||PARCELAMENTO3);
END;