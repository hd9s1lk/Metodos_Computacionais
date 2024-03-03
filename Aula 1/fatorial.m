function [a] = fatorial(input)
    if (fix(input)==input && input>=0)
        if(input==0)
            a = 1;
        else
            a=1;
            for i=1:input
                a=a*i;
            end
        end
    end
end