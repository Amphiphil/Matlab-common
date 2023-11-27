% Number of rows and columns in your subplot grid
nR = 2; % Adjust this as needed
nC = 2; % Adjust this as needed

% Total number of subplots
tP = nR * nC;

% Annotation text for each subplot
t = {'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p'}; % Extend this list as needed

% Ensure antext has at least as many elements as totalPlots
if length(t) < tP
    error('Not enough annotation labels for the number of subplots');
end

% Initialize array for subplot handles
subplot_handles = zeros(1, tP);

% Create subplots and store their handles
for i = 1:tP
    subplot_handles(i) = subplot(nR, nC, i);
end

% Add annotations
for i = 1:tP
    % Get position of the ith subplot
    subplot_pos = get(subplot_handles(i), 'Position');

    % Calculate position for annotation (upper left corner of the subplot)
    annot_pos = [subplot_pos(1), subplot_pos(2) + subplot_pos(4) - 0.05, 0.05, 0.05]; % Adjust as needed

    % Create annotation
    annotation('textbox', annot_pos, ...
               'String', t{i}, ...
               'FontSize', 14, ...
               'FontName', 'Arial', ...
               'LineStyle', 'none', ...
               'EdgeColor', 'none', ...
               'BackgroundColor', 'none', ...
               'Color', 'k', ...
               'FontWeight', 'bold');
end
