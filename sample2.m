function sample2
    clear all;
    close all;
    
    n = -4:6;
    
    subplot(221)
    stem(n,unitimp(n));
    
    subplot(222);
    stem(n,unitstep(n));
    
    subplot(223);
    stem(n,ramp(n));
       
    subplot(224);
    stem(n,realexp(0.5,n));
    

    function x = unitimp(n)
       x = n==0;
    end

    function x = unitstep(n)
       x = n>=0; 
    end

    function x = ramp(n)
       x = n.*(n>=0);
    end

    function x = realexp(alpha,n)
       x = alpha.^n.*(n>=0);
    end

end
