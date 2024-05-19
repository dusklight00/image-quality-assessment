function predicted_score = bliinds_prediction(features) 


% features: needs to be a ROW vector of features

b = 1.0168;
gama = 0.4200;
mu = [1.4526,2.6063,1.5189,0.4061,0.7595,1.0661,0.1668,0.5942,1.3617,2.4291,1.359,0.4069,0.7489,1.0642,0.1261,0.4472,1.3117,2.3635,1.2518,0.3962,0.7488,1.0442,0.1111,0.4005,38.4298];
sigma_inv = [1142.0558,-432.1755,149.2329,-717.0836,-416.2206,31.8536,-1336.523,410.0095,-1081.7624,272.0877,-177.6223,399.9886,-102.9389,34.606,282.7366,-108.438,818.5531,-188.9166,70.6472,-77.8053,-343.2404,-12.5055,395.2466,-18.7065,-0.8141;-432.1755,433.8229,-54.84,641.2262,85.5863,-2.75,558.4171,-457.0072,421.0835,-411.2758,47.5459,-899.064,-221.2799,17.1216,-305.5351,460.9747,-159.8047,145.0255,-27.7132,370.6197,-75.8506,-63.6843,-22.494,-133.3571,0.0219;149.2329,-54.84,187.937,7.9333,632.977,-65.6098,25.8639,-66.0151,-80.4984,31.3319,-343.8075,-92.8136,-1181.0285,134.916,17.2939,-62.572,82.6342,-43.0662,181.3199,4.9145,495.4434,-58.1347,-75.9212,119.1007,0.0772;-717.0836,641.2262,7.9333,4797.5444,1717.8011,-128.6028,1157.9108,-475.5831,377.5675,-591.4465,35.8215,-7387.9628,-1030.6953,147.5468,125.754,-216.0778,-362.3661,438.113,-17.5266,4347.0248,668.3571,-251.9599,145.5076,251.7237,-0.495;-416.2206,85.5863,632.977,1717.8011,4477.6629,-468.3493,1037.7334,-469.0415,506.389,-74.3401,-1199.5867,-2036.4113,-6609.5733,701.0935,75.109,-63.5547,-538.0178,86.1049,684.5736,891.7386,3917.7429,-291.5712,-375.5885,275.662,2.5356;31.8536,-2.75,-65.6098,-128.6028,-468.3493,98.8632,-113.4991,40.0324,-44.7143,3.3637,134.8988,149.7918,773.201,-101.4789,107.5409,-30.7392,50.436,-11.1299,-79.6877,-79.7793,-487.2088,32.5063,199.6138,-55.8805,-0.2938;-1336.523,558.4171,25.8639,1157.9108,1037.7334,-113.4991,11066.3771,-2760.6397,95.7434,89.966,-198.1993,-67.4954,-1619.3719,245.3796,76.5486,-244.2315,-1264.4597,341.7784,165.1558,724.7502,3235.1716,-226.0946,-2393.0874,774.8213,0.288;410.0095,-457.0072,-66.0151,-475.5831,-469.0415,40.0324,-2760.6397,1158.3839,-138.1918,343.2445,198.5439,453.623,1166.1971,-138.1524,598.2122,-817.5906,132.0554,-137.9952,-113.7796,-209.1552,-771.1506,138.5616,510.3357,168.2711,-0.29;-1081.7624,421.0835,-80.4984,377.5675,506.389,-44.7143,95.7434,-138.1918,1915.4103,-655.0341,153.5997,-627.1194,-322.4587,-7.3923,-2162.1359,538.0409,-1025.2009,308.3455,-129.4954,168.873,-209.339,69.8181,-452.5079,124.0219,0.0884;272.0877,-411.2758,31.3319,-591.4465,-74.3401,3.3637,89.966,343.2445,-655.0341,826.2931,-91.2498,1647.7299,163.0693,-2.7738,1239.8022,-944.4377,94.8178,-357.1419,76.4646,-957.8153,343.644,-0.2534,128.5456,323.3975,0.1007;-177.6223,47.5459,-343.8075,35.8215,-1199.5867,134.8988,-198.1993,198.5439,153.5997,-91.2498,764.6647,-0.7828,2728.3511,-298.1473,-163.2537,37.1566,-92.0854,103.2661,-467.0539,118.3362,-1561.5375,187.4717,749.0445,-339.9817,-0.7412;399.9886,-899.064,-92.8136,-7387.9628,-2036.4113,149.7918,-67.4954,453.623,-627.1194,1647.7299,-0.7828,15752.7595,1976.6379,-197.003,832.5406,-34.3484,108.2804,-1057.2645,84.3704,-10282.9364,202.5549,332.7627,-1940.4479,41.3643,0.5778;-102.9389,-221.2799,-1181.0285,-1030.6953,-6609.5733,773.201,-1619.3719,1166.1971,-322.4587,163.0693,2728.3511,1976.6379,14915.6954,-1537.3351,-864.4597,-612.9677,733.9263,-58.5232,-1684.4262,-949.8378,-9235.8741,903.1342,2388.4858,-630.6582,-5.3337;34.606,17.1216,134.916,147.5468,701.0935,-101.4789,245.3796,-138.1524,-7.3923,-2.7738,-298.1473,-197.003,-1537.3351,298.4816,272.9144,-2.214,-80.2759,14.4577,180.0449,121.1852,975.5485,-209.6239,-250.0557,74.7275,0.4619;282.7366,-305.5351,17.2939,125.754,75.109,107.5409,76.5486,598.2122,-2162.1359,1239.8022,-163.2537,832.5406,-864.4597,272.9144,24284.4755,-6669.3766,-1532.0103,270.1864,95.4222,398.1832,2160.278,47.5033,1761.0822,-172.2217,-0.2626;-108.438,460.9747,-62.572,-216.0778,-63.5547,-30.7392,-244.2315,-817.5906,538.0409,-944.4377,37.1566,-34.3484,-612.9677,-2.214,-6669.3766,4040.7993,557.8029,164.0227,14.2624,-443.5659,-224.9072,-38.6544,159.202,-1533.4954,0.6494;818.5531,-159.8047,82.6342,-362.3661,-538.0178,50.436,-1264.4597,132.0554,-1025.2009,94.8178,-92.0854,108.2804,733.9263,-80.2759,-1532.0103,557.8029,1641.2223,-456.9275,66.8667,-448.1533,-1107.5629,-67.5189,-3176.3697,656.7044,-0.4248;-188.9166,145.0255,-43.0662,438.113,86.1049,-11.1299,341.7784,-137.9952,308.3455,-357.1419,103.2661,-1057.2645,-58.5232,14.4577,270.1864,164.0227,-456.9275,415.1508,-77.733,1060.393,213.199,-7.8851,1016.6317,-532.7717,0.0241;70.6472,-27.7132,181.3199,-17.5266,684.5736,-79.6877,165.1558,-113.7796,-129.4954,76.4646,-467.0539,84.3704,-1684.4262,180.0449,95.4222,14.2624,66.8667,-77.733,331.5003,-114.2755,1293.5639,-139.5878,-864.2833,240.3795,0.7383;-77.8053,370.6197,4.9145,4347.0248,891.7386,-79.7793,724.7502,-209.1552,168.873,-957.8153,118.3362,-10282.9364,-949.8378,121.1852,398.1832,-443.5659,-448.1533,1060.393,-114.2755,8411.2137,752.0714,-241.4548,989.9951,-82.2795,-0.8877;-343.2404,-75.8506,495.4434,668.3571,3917.7429,-487.2088,3235.1716,-771.1506,-209.339,343.644,-1561.5375,202.5549,-9235.8741,975.5485,2160.278,-224.9072,-1107.5629,213.199,1293.5639,752.0714,10202.2973,-860.8491,-6453.1128,921.0346,5.639;-12.5055,-63.6843,-58.1347,-251.9599,-291.5712,32.5063,-226.0946,138.5616,69.8181,-0.2534,187.4717,332.7627,903.1342,-209.6239,47.5033,-38.6544,-67.5189,-7.8851,-139.5878,-241.4548,-860.8491,525.8328,1781.4998,-336.3702,-0.3643;395.2466,-22.494,-75.9212,145.5076,-375.5885,199.6138,-2393.0874,510.3357,-452.5079,128.5456,749.0445,-1940.4479,2388.4858,-250.0557,1761.0822,159.202,-3176.3697,1016.6317,-864.2833,989.9951,-6453.1128,1781.4998,61706.1511,-14545.9815,-1.5038;-18.7065,-133.3571,119.1007,251.7237,275.662,-55.8805,774.8213,168.2711,124.0219,323.3975,-339.9817,41.3643,-630.6582,74.7275,-172.2217,-1533.4954,656.7044,-532.7717,240.3795,-82.2795,921.0346,-336.3702,-14545.9815,5166.6137,-0.4822;-0.8141,0.0219,0.0772,-0.495,2.5356,-0.2938,0.288,-0.29,0.0884,0.1007,-0.7412,0.5778,-5.3337,0.4619,-0.2626,0.6494,-0.4248,0.0241,0.7383,-0.8877,5.639,-0.3643,-1.5038,-0.4822,0.0112];

iVect=[0:0.5:100];   

count=0;
for i=1:0.5:100
    count=count+1;
    p_temp(count)=exp(-(b*(([features i]-mu)*sigma_inv*([features i]-mu)'))^(gama/1));
end
[ttt IXX]=max(p_temp);
dm=iVect(IXX);          
clear p_temp* IXX

predicted_score=dm;     
