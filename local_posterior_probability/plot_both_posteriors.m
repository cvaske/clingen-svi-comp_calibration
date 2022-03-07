function [] = plot_both_posteriors (postp, postb, thrs, Postp, Postb, method)

% pathogenic

subplot(2, 1, 1);

% make a plot
plot(thrs, mean(postp, 1), ...
   thrs, ones(1, length(thrs)) * Postp(1), ...
   thrs, ones(1, length(thrs)) * Postp(2), ...
   thrs, ones(1, length(thrs)) * Postp(3), ...
   thrs, ones(1, length(thrs)) * Postp(4), 'LineWidth', 1);

axis([min(thrs) max(thrs) 0 1]);
title(['Pathogenic: ' method]);

xlabel('Score')
ylabel('Posterior');

% benign

subplot(2, 1, 2)

thrs = thrs(length(thrs) : -1 : 1);

% make a plot
plot(thrs, mean(postb, 1), ...
   thrs, ones(1, length(thrs)) * Postb(1), ...
   thrs, ones(1, length(thrs)) * Postb(2), ...
   thrs, ones(1, length(thrs)) * Postb(3), ...
   thrs, ones(1, length(thrs)) * Postb(4), 'LineWidth', 1)

axis([min(thrs) max(thrs) 0.95 1]);
title(['Benign: ' method]);

xlabel('Score')
ylabel('Posterior');

pause(3); % just so it gets plotted before the code moves on

return