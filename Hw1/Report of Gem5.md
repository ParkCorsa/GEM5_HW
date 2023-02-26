# Gem5使用报告

### 默认参数设置

sieve程序数据规模：1000000，编译选项 -static -lm

内存大小：8GB

L1i缓存：16kB

L1d缓存：64kB

L2缓存：256kB

CPU模型：TimingSimpleCPU, AtomicSimpleCPU, DerivO3CPU, O3CPU**（新版Gem5在x86下不支持MinorCPU，故未使用）**

内存类型：DDR3_1600_x64, DDR3_2133_x64, LPDDR2_S4_1066_x32

### 实验数据

详见附件Gem5-Data.xlsx

![image-20221101220823776](C:\Users\shihuiping\AppData\Roaming\Typora\typora-user-images\image-20221101220823776.png)

### 结果分析

本次实验采用了两种[SimpleCPU]([gem5: Simple CPU Models](https://www.gem5.org/documentation/general_docs/cpu_models/SimpleCPU))类型——TimingSimpleCPU和AtomicSimpleCPU，以及两种[O3CPU]([gem5: Out of order CPU model](https://www.gem5.org/documentation/general_docs/cpu_models/O3CPU))类型——DerivO3CPU和O3CPU。SimpleCPU模型顾名思义非常地单纯，采用顺序执行，没有冗繁的细节，可能就只包含用户信息处理和程序运行等阶段；而O3CPU模型采用的是乱序，采用“Pipeline”流水线的方式，经历Fetch、Decode、Rename、Issue/Execute/Writeback、Commit阶段，并且采用了**Execute-in-execute model**去尽可能实现时间上的精确。

以模拟时间来表征性能，可以看到DerivO3和O3在实验中的性能表现完全一致。

当CPU频率和内存选项相同时他们的性能由于TimingSimple，TimingSimple又优于AtomicSimple。

当CPU模型和CPU频率相同时，不同内存下的性能表现为DDR3_2133_x64优于DDR3_1600_x64优于LPDDR2_S4_1066_x32，并且DDR3_2133_x64和DDR3_1600_x64的性能较为接近，但是CPU模型为AtomicSimple时，三种内存的性能表现完全一样

当CPU模型和内存相同时，性能随着CPU频率升高而增强。

### 对Assignment中几个问题的回答

由于DerivO3和O3在实验中性能表现完全相同，下统称O3

##### 哪种CPU模型对CPU频率更敏感，为什么？

AtomicSimple是最敏感的，这与其采用顺序执行的方式和Atomic式访存有关，顺序执行时所有指令排成一列，而Atomic访存是非常简单的一种访存方式，相较于复杂的访存方法，完成需求时能避免资源冲突和需求队列造成的延迟，这使得影响AtomicSimple性能的因素较少，CPU频率能有相对更大的影响。

##### 哪种CPU模型对内存类型更敏感，为什么？

O3最敏感。这可能与其实现中的“Memory Order Misspeculation”有关，因为O3采用乱序，读写的顺序在执行命令后会有重排操作，这导致其对Memory的性能要求比采用顺序的SimpleCPU更高。

##### 埃氏筛法程序对CPU频率和内存类型哪个更敏感，为什么？

对CPU频率更敏感，原因在于算法空间复杂度是$O(n)$而时间复杂度是$O(nloglogn)$，时间复杂度更高，导致程序对时间因素更敏感。

##### 换一个程序，结论会改变吗，为什么？

我认为会，例如用C++实现对于给定**有序**序列的二分查找，空间复杂度是$O(n)$，时间复杂度是$O(logn)$，那么应该会对内存类型更敏感。