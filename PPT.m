function Probability=PPT(BPA,number)
    % PPT: The Pignistic transform of the given BPA
    % BPA: The given basic probability distribution,arranged in binary order(1*2^number)
    % number: The number of the propositions
    % Probability: The transformed probability distribution(1*number)
    Probability = zeros(1,number);
    for i = 0:2^number-1
        binary = dec2bin(i,number);   % return the binary representation of i
        count = 0;                    % return the non-zero element numbers of the binary representation
        for j = 1:number
            if double(binary(j)) == 49
                count = count+1;
            end
        end
        for j = 1:number
            if double(binary(j)) == 49 & count ~= 0
                Probability(number+1-j) = Probability(number+1-j)+BPA(i+1)/count;  % Pignistic probability transform
            end
        end
    end

    
        