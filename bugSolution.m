function result = myFunction(input)
  try
    if input < 0
      warning('Input must be non-negative. Returning NaN.'); % Replaced error with warning
      result = NaN;
      return; % Exit the function early
    end
    % More code here (consider using iteration instead of recursion if recursion depth is potentially high)
    if input == 0
        result = 1;
    else
        result = input * myFunction(input -1); 
    end
  catch ME
    warning('An error occurred: %s', ME.message);
    result = NaN; % Handle the error appropriately
  end
end

% Example of how it works:
input = -1;
result = myFunction(input); % Gracefully handles negative input
input = 5;
result = myFunction(input); % Handles positive input