TargetImage = imread('36x36monalisa.jpg');
Population = buildPopulationImage(10,TargetImage);

Fitness = calculateFitnessImage_M2(Population,TargetImage);

Mpool = buildMatingPoolImage(Fitness);
