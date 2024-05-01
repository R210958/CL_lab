% Prompting the user to input the lengths of the signals
lx = input('Enter the length of signal x(n): ');
ly = input('Enter the length of signal y(n): ');
% Generating random signals x(n) and y(n)
x = rand(1, lx);
y = rand(1, ly);
% Function to compute the summation
function result = compute_summation(x, y, ln)
    result = [];
    for k = 0:2:ln
        summation = sum(x(1:min(length(x), ln+1-k)) .* y(k+1:min(length(y), k+ln+1)));
        result = [result, summation];
    end
end
% Compute the summation
ln = min(lx, ly);
result = compute_summation(x, y, ln);
% Plotting
plot(result);
xlabel('Index (k values)');
ylabel('Summation');
title('Summation from n=0 to ln of x(n)y(n+k)');