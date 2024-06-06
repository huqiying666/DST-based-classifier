% Function4: return the QfrB matrix
function matrix = QfrB(number)
counter = 2^(number-1);
if number == 1
    matrix = [1 -1
              0 1];
else
    sub_matrix = QfrB(number-1);
    zero_matrix = zeros(counter,counter);
    matrix = [sub_matrix -sub_matrix
              zero_matrix sub_matrix];
end
end
