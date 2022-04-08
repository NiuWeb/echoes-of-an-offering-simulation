function [result] = sim(hits)
    p = 0.36;
    n = 0;
    for i = 1:hits
        if(chance(p))
           p = 0.36;
           n = n + 1;
        else
            p = p + 0.2;
        end
    end
    result = n/hits;
end