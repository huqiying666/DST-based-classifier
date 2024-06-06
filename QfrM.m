% Function1: return the QfrM matrix
function matrix = QfrM(number)
    counter = 2^(number-1);
    if number == 1
        matrix = [1 1
                  0 1];
    else
        sub_matrix = QfrM(number-1);
        zero_matrix = zeros(counter,counter);
        matrix = [sub_matrix sub_matrix
                  zero_matrix sub_matrix];
    end
end
