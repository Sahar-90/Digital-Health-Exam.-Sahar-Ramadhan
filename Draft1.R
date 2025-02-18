# Load necessary libraries
library(ggplot2)

# Load the data from a CSV file
medical_insurance <- read.csv("C:\\Users\\Sarah\\Documents\\New Rproject\\medical_insurance.csv")

# View the data
View(medical_insurance)

# Create the data frame directly for demonstration purposes
data <- read.table(text = "
age sex bmi children smoker region charges
19 female 27.900 0 yes southwest 16884.924
18 male 33.770 1 no southeast 1725.552
28 male 33.000 3 no southeast 4449.462
33 male 22.705 0 no northwest 21984.471
32 male 28.880 0 no northwest 3866.855
31 female 25.740 0 no southeast 3756.622
46 female 33.440 1 no southeast 8240.590
37 female 27.740 3 no northwest 7281.506
37 male 29.830 2 no northeast 6406.411
60 female 25.840 0 no northwest 28923.137
25 male 26.220 0 no northeast 2721.321
62 female 26.290 0 yes southeast 27808.725
23 male 34.400 0 no southwest 1826.843
56 female 39.820 0 no southeast 11090.718
27 male 42.130 0 yes southeast 39611.758
19 male 24.600 1 no southwest 1837.237
52 female 30.780 1 no northeast 10797.336
23 male 23.845 0 no northeast 2395.172
56 male 40.300 0 no southwest 10602.385
30 male 35.300 0 yes southwest 36837.467
60 female 36.005 0 no northeast 13228.847
30 female 32.400 1 no southwest 4149.736
18 male 34.100 0 no southeast 1137.011
34 female 31.920 1 yes northeast 37701.877
37 male 28.025 2 no northwest 6203.902
59 female 27.720 3 no southeast 14001.134
63 female 23.085 0 no northeast 14451.835
55 female 32.775 2 no northwest 12268.632
23 male 17.385 1 no northwest 2775.192
31 male 36.300 2 yes southwest 38711.000
22 male 35.600 0 yes southwest 35585.576
18 female 26.315 0 no northeast 2198.190
19 female 28.600 5 no southwest 4687.797
63 male 28.310 0 no northwest 13770.098
28 male 36.400 1 yes southwest 51194.559
19 male 20.425 0 no northwest 1625.434
62 female 32.965 3 no northwest 15612.193
26 male 20.800 0 no southwest 2302.300
35 male 36.670 1 yes northeast 39774.276
60 male 39.900 0 yes southwest 48173.361
24 female 26.600 0 no northeast 3046.062
31 female 36.630 2 no southeast 4949.759
41 male 21.780 1 no southeast 6272.477
37 female 30.800 2 no southeast 6313.759
38 male 37.050 1 no northeast 6079.672
55 male 37.300 0 no southwest 20630.284
18 female 38.665 2 no northeast 3393.356
28 female 34.770 0 no northwest 3556.922
60 female 24.530 0 no southeast 12629.897
36 male 35.200 1 yes southeast 38709.176
18 female 35.625 0 no northeast 2211.131
21 female 33.630 2 no northwest 3579.829
48 male 28.000 1 yes southwest 23568.272
36 male 34.430 0 yes southeast 37742.576
40 female 28.690 3 no northwest 8059.679
58 male 36.955 2 yes northwest 47496.494
58 female 31.825 2 no northeast 13607.369
18 male 31.680 2 yes southeast 34303.167
53 female 22.880 1 yes southeast 23244.790
34 female 37.335 2 no northwest 5989.524
43 male 27.360 3 no northeast 8606.217
25 male 33.660 4 no southeast 4504.662
64 male 24.700 1 no northwest 30166.618
28 female 25.935 1 no northwest 4133.642
20 female 22.420 0 yes northwest 14711.744
19 female 28.900 0 no southwest 1743.214
61 female 39.100 2 no southwest 14235.072
40 male 26.315 1 no northwest 6389.378
40 female 36.190 0 no southeast 5920.104
28 male 23.980 3 yes southeast 17663.144
27 female 24.750 0 yes southeast 16577.780
31 male 28.500 5 no northeast 6799.458
53 female 28.100 3 no southwest 11741.726
58 male 32.010 1 no southeast 11946.626
44 male 27.400 2 no southwest 7726.854
57 male 34.010 0 no northwest 11356.661
29 female 29.590 1 no southeast 3947.413
21 male 35.530 0 no southeast 1532.470
22 female 39.805 0 no northeast 2755.021
41 female 32.965 0 no northwest 6571.024
31 male 26.885 1 no northeast 4441.213
45 female 38.285 0 no northeast 7935.291
22 male 37.620 1 yes southeast 37165.164
48 female 41.230 4 no northwest 11033.662
37 female 34.800 2 yes southwest 39836.519
45 male 22.895 2 yes northwest 21098.554
57 female 31.160 0 yes northwest 43578.939
56 female 27.200 0 no southwest 11073.176
46 female 27.740 0 no northwest 8026.667
55 female 26.980 0 no northwest 11082.577
21 female 39.490 0 no southeast 2026.974
53 female 24.795 1 no northwest 10942.132
59 male 29.830 3 yes northeast 30184.937
35 male 34.770 2 no northwest 5729.005
64 female 31.300 2 yes southwest 47291.055
28 female 37.620 1 no southeast 3766.884
54 female 30.800 3 no southwest 12105.320
55 male 38.280 0 no southeast 10226.284
56 male 19.950 0 yes northeast 22412.648
", header = TRUE)

# Visualizations
ggplot(data, aes(x = charges)) +
  geom_histogram(binwidth = 5000, fill = "blue", color = "black") +
  labs(title = "Distribution of Insurance Charges", x = "Charges", y = "Frequency")

ggplot(data, aes(x = smoker, y = charges)) +
  geom_boxplot(aes(fill = smoker)) +
  labs(title = "Insurance Charges by Smoker Status", x = "Smoker", y = "Charges")

ggplot(data, aes(x = bmi, y = charges, color = smoker)) +
  geom_point() +
  labs(title = "BMI vs Insurance Charges by Smoking Status", x = "BMI", y = "Charges")

ggplot(data, aes(x = region, y = charges)) +
  geom_boxplot(aes(fill = region)) +
  labs(title = "Insurance Charges by Region", x = "Region", y = "Charges")

# Scatter plot with regression line
ggplot(data, aes(x = bmi, y = charges)) +
  geom_point() +
  geom_smooth(method = "lm", col = "blue") +
  labs(title = "Relationship between BMI and Insurance Charges", x = "BMI", y = "Insurance Charges")

install.packages("shiny")
install.packages("ggplot2")
library(shiny)
library(ggplot2)
data <- read.csv("C:\\Users\\Sarah\\Documents\\New Rproject\\medical_insurance.csv")
