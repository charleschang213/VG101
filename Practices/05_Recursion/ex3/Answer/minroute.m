function y = minroute(map)
    covered = zeros(size(map)); %What is the reason for declaring this variable?
    [steps,route] = find_route(map,size(map,1),size(map,2),covered);
    y = steps;
    for i=1:length(route)
        switch route(i)
            case 1
                fprintf("up ");
            case 2
                fprintf("left ");
            case 3
                fprintf("down ");
            case 4
                fprintf("right ");
        end
    end
    fprintf("\n");
end

function [steps,route] = find_route(map,m,n,covered)
    if (m==1)&&(n==1)
        steps = 0;
        route = [];
        return;
    end
    direction = [1,0;0,1;-1,0;0,-1];
    steps = inf;
    route = [];
    for i=1:4
        pre_location = [m,n]+direction(i,:);
        if (pre_location(1)<=size(map,1))&&(pre_location(1)>0)...
                &&(pre_location(2)<=size(map,2))&&(pre_location(2)>0)...
                &&(map(pre_location(1),pre_location(2))==0)...
                &&(covered(pre_location(1),pre_location(2))==0)
            new_covered = covered;
            new_covered(m,n)=1;
            [presteps,preroute] = find_route(map,pre_location(1),pre_location(2),new_covered);%The recursion step            if  (presteps+1<steps)
                steps = presteps+1;
                route = [preroute,i];
            end
        end
    end
end