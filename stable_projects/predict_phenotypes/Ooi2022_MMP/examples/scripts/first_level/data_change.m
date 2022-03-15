% data_path = 'D:\Data\2022\Mar\fc-re\rsfc_DK_4.txt';
% data = load(data_path);
% subid_all = load('D:\Data\2022\Mar\fc-re\HCP_922.txt');

% for sub = 1:921
%     sub_data = data(sub, :);
%     subid = subid_all(sub);
%     save_name = strcat(num2str(subid), '.mat');
%     save(save_name, 'sub_data');
% end
% features_rs = data.';
% save( 'features_rs.mat', 'features_rs');

cov = load('D:\Data\2022\Mar\output_cov.csv');
save('D:\Data\2022\Mar\output_cov.mat', 'cov');