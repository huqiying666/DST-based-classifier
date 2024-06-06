function combined_BPA = DRC(BPAs,number1,number2)
% DRC: Dempster rule of combination
% BPAs: The needed combined BPAs(number2*2^number1, the focal elements are
% arranged in binary order, for example, {{empty set},{theta1},{theta2},{theta1,theta2}}) 
% number1: The number of the propositions
% number2: The number of the combined BPAs
% combined_BPA: The combined result through Dempster rule of
% combination(1*2^number1)

counter = 2^number1;
matrix = QfrM(number1);
Transformed_BPAs = (matrix*BPAs')';
conflict_K = conflict(BPAs,number1,number2);
Normalization_coff = 1-conflict_K;
combined_BPA = zeros(1,counter)+1;
for i = 1:counter
    for j = 1:number2
        combined_BPA(i) = combined_BPA(i)*Transformed_BPAs(j,i);
    end
end
if Normalization_coff~=0
    combined_BPA = combined_BPA/Normalization_coff;
    combined_BPA = (QfrB(number1)*combined_BPA')';
    combined_BPA(1,1) = 0;
end
end

