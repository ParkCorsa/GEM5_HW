### Step 1

Op_class : line 156~209

![image-20221209235743470](C:\Users\shihuiping\AppData\Roaming\Typora\typora-user-images\image-20221209235743470.png)

![image-20221209235804586](C:\Users\shihuiping\AppData\Roaming\Typora\typora-user-images\image-20221209235804586.png)

![image-20221209235838712](C:\Users\shihuiping\AppData\Roaming\Typora\typora-user-images\image-20221209235838712.png)

IntAlu, IntMult, IntDiv对应代码中的整数运算，例如循环变量的加法，同理Float类型的opClass对应了代码中的浮点数运算，例如daxpy循环内的计算，Mem则是在内存上的读写等操作

### Step 2

1st part: line 156~209

![image-20221210212040114](C:\Users\shihuiping\AppData\Roaming\Typora\typora-user-images\image-20221210212040114.png)

2nd part: line 897~950

![image-20221210212112472](C:\Users\shihuiping\AppData\Roaming\Typora\typora-user-images\image-20221210212112472.png)

3rd part: line 1460~1513

![image-20221210212138605](C:\Users\shihuiping\AppData\Roaming\Typora\typora-user-images\image-20221210212138605.png)

每一部分的大体结构与 Step 1中的一致，当然因为代码划分成3份，每一部分的各类操作占比有所变化，比如第一、二部分涉及浮点运算较多。第一部分IntAlu、IntDiv、IntMult、FloatMult指令尤其多，这可能是因为库函数的调用；第二部分是daxpy循环主体，所以主要是浮点加法、乘法，整数运算来自循环变量、数组访问；第三部分主要是浮点加法和整数运算。详见stats

### Step 3

使用的CPU：O3CPU

模拟结果详见stats

O3CPU模拟可视化：

![image-20221204205906528](C:\Users\shihuiping\AppData\Roaming\Typora\typora-user-images\image-20221204205906528.png)

What is the difference between an pipeline and a non-pipeline in this assignment ：

本次实验中的non-pipeline CPU执行指令过程如下，可以看到非流水线处理器并没有将一条指令划分为多个阶段，一条指令从接收到执行完成是一个整体

![TimingSimpleCPU](https://www.gem5.org/assets/img/TimingSimpleCPU.jpg)

流水线处理器则将一条指令划分为五个阶段

![image-20221210220823570](C:\Users\shihuiping\AppData\Roaming\Typora\typora-user-images\image-20221210220823570.png)

这样可以提高指令并行度，进而提升性能，两次模拟的数据显示，O3CPU比TimingSimpleCPU的模拟速度快了近4倍，可见流水线式处理器较非流水线式处理器可以显著提高执行效率。