% Function2: return the non-zero number each column of QfrM matrix
function column_number = column_QfrM(number)
    if number == 1
        column_number = [0 1];
    else
        column_numbersub1 = column_QfrM(number-1);
        column_numbersub2 = column_numbersub1 + 1;
        column_number = [column_numbersub1 column_numbersub2];
    end
end