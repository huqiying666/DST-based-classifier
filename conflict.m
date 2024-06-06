% Function3: Conflict measurement for the given BPAs
function conflict_K = conflict(BPAs,number1,number2)
    counter = 2^number1;
    matrix = QfrM(number1);
    Transformed_BPAs = (matrix*BPAs')';
    X = zeros(1,counter)+1;
    for i = 1:counter
        for j = 1:number2
            X(1,i) = X(1,i)*Transformed_BPAs(j,i);
        end
    column_number = column_QfrM(number1);
    conflict_K = 0;
    for i = 2:counter
        conflict_K = conflict_K+((-1)^(column_number(i)+1))*X(1,i);
    end
    conflict_K = 1-conflict_K;
    end
end
