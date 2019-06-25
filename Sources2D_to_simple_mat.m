function Sources2D_to_simple_mat(file_name)
    % CNMFe outputs .mat files that store a matlab object of type Sources2D which can
    % only be opened in matlab with the Sources2D class definition file in the matlab 
    % path. This function converts these files into a basic .mat file that can be 
    % opened in Python using scipy.io.loadmat.
    % (c) Thomas Akam 2019. GPL-3 open source licence.

    load(file_name, 'neuron')

    A = neuron.A;
    C = neuron.C;
    S = neuron.S;
    C_raw = neuron.C_raw;
    image_size = size(neuron.Cn);

    save('data.mat','A', 'C', 'S', 'C_raw', 'image_size', 'file_name', '-v6')

end