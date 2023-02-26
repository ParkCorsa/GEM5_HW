# STEP 1

### on x86 processor(# of iteration = 1e8)

###### using branches

| 1     | 2     | 3     | 4     | 5     | 6     | 7     | 8     | 9     | 10    | 平均  |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| 0.297 | 0.297 | 0.250 | 0.266 | 0.250 | 0.297 | 0.313 | 0.266 | 0.281 | 0.234 | 0.250 |

###### using cmov

| 1     | 2     | 3     | 4     | 5     | 6     | 7     | 8     | 9     | 10    | 平均  |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| 0.297 | 0.344 | 0.313 | 0.313 | 0.313 | 0.328 | 0.297 | 0.328 | 0.344 | 0.328 | 0.321 |

The version using branches seems to perform better.

### on O3 CPU(# of iteration = 1e6)

###### using branches: 0.010335s

Number of  branches predicted/Incorrect: 2059486/4729

###### using cmov: 0.010335s

Number of  branches predicted/Incorrect: 1059497/4721

The two versions perform the same in time. However, using cmov does avoid a lot of branches.

# STEP 2

### on x86 processor

running: big.txt

###### using branches

Number of Connected Components: 1

| 1     | 2     | 3     | 4     | 5     | 6     | 7     | 8     | 9     | 10    | 平均  |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| 0.051 | 0.059 | 0.050 | 0.052 | 0.055 | 0.063 | 0.058 | 0.054 | 0.054 | 0.057 | 0.055 |

###### using cmov

Number of Connected Components: 1

| 1     | 2     | 3     | 4     | 5     | 6     | 7     | 8     | 9     | 10    | 平均  |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| 0.054 | 0.057 | 0.060 | 0.056 | 0.051 | 0.058 | 0.058 | 0.047 | 0.048 | 0.058 | 0.055 |

### on O3 CPU

Notice: Here we focus on the counting of branch predictions ***during the finding of connected components***, for data of the whole simulation, you can look up in the filefolder "stats_step2_with_gem5".

#### (1) *running: small.txt*

###### using branches

simulation time: 0.000202s

Number of  branches predicted/Incorrect: 14419/1870

percentage of incorrect predictions: 12.97%

###### using cmov

simulation time: 0.000204s

Number of  branches predicted/Incorrect: 7536/1081

percentage of incorrect predictions: 14.34%

#### (2) *running: medium.txt*

###### using branches

simulation time: 0.000451s

Number of  branches predicted/Incorrect: 29895/3787

percentage of incorrect predictions: 12.67%

###### using cmov

simulation time: 0.000456s

Number of  branches predicted/Incorrect: 15516/2143

percentage of incorrect predictions: 13.81%



Unexpectedly, using cmov takes a slightly more time. However, the number of branches predicted sharply dropped by applying cmov.