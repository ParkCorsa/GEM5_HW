### Task 1

benchmark：mm

setAssoc：8

模拟时间

|            | Random     | NMRU       | FIFO       | TreePLRU   |
| ---------- | ---------- | ---------- | ---------- | ---------- |
| simSeconds | 0.001999   | 0.001999   | 0.001999   | 0.002001   |
| simTicks   | 1999253500 | 1998847500 | 1999267500 | 2000528000 |

四种替换策略的性能表现几乎没有差异，NMRU最快，TreePLRU相较其他策略会明显稍慢一点。

dcache

|                       | Random       | NMRU         | FIFO         | TreePLRU     |
| --------------------- | ------------ | ------------ | ------------ | ------------ |
| overallMissLatency    | 2930205499   | 3022152498   | 4805722999   | 4013558499   |
| overallMissRate       | 0.058101     | 0.060832     | 0.107670     | 0.085694     |
| overallAvgMissLatency | 17452.503329 | 17192.127393 | 15445.731124 | 16207.688390 |

四种替换策略应用到L1D Cache的结果是，随机策略优于非随机策略，其中Random表现最好，NMRU表现与Random接近（都是随机策略）。FIFO和TreePLRU表现明显不如Random和NMRU，其中FIFO策略带来的Miss代价更大，虽然平均意义下的代价更小。

l2

|                       | Random       | NMRU         | FIFO         | TreePLRU     |
| --------------------- | ------------ | ------------ | ------------ | ------------ |
| overallMissLatency    | 286605000    | 285751500    | 285840000    | 287492000    |
| overallMissRate       | 0.131392     | 0.119919     | 0.084452     | 0.103136     |
| overallAvgMissLatency | 71866.850552 | 71634.870895 | 71675.025075 | 72071.195788 |

四种替换策略应用到L2 Cache的结果是，Miss代价无论从整体上还是平均意义上都相差无几，但是Miss的频率上非随机策略更优，其中FIFO最优，TreePLRU次之，两种随机策略的Miss频率相对较高，其中Random最高。

此外，我对其他benchmark也做了测试，得到的结果也是随机算法更优，有些情况下Random甚至比NMRU还要好。

##### 结果分析

更深层的L2 Cache因为access次数较少，非随机的替换策略凭借其稳定性取得了较好的性能表现，但是由于L1D Cache的需求量太大，L2 Cache的影响最终没有体现在总的模拟结果上。而随机策略因为在数据规模庞大时的总体表现更优，最终带来了整个模拟过程的效率上的提升。其中NMRU策略一方面借鉴了Random策略的随机性特点，另一方面借鉴了非随机的LRU策略的特性，这种权衡最后使得其总体性能表现最佳。（对于benchmark：mm而言）

### Task 2

在任务一的基础上，增加了将Random策略的setAssoc设置为16的一组实验

结果如下

| simSeconds                    | simTicks                   |                                  |
| ----------------------------- | -------------------------- | -------------------------------- |
| 0.002000                      | 1999869500                 |                                  |
| **dcache.overallMissLatency** | **dcache.overallMissRate** | **dcache.overallAvgMissLatency** |
| 2957013999                    | 0.058813                   | 17398.805560                     |
| **l2.overallMissLatency**     | **l2.overallMissRate**     | **l2.overallAvgMissLatency**     |
| 288390500                     | 0.129488                   | 72296.440211                     |

比较调整setAssoc后的策略，NMRU依然是最优的。原因是Random策略在增大setAssoc之后效率还是收到了一定影响，虽然增大associativity确实降低了l2的missRate，但missLatency还是增加了，结果上也确实变慢了，NMRU因为维持了setAssoc=8，结果表现依旧是最佳的。

Cache的replacement对于这个workload还是很重要的。mm的程序实现中对于连续的一段数组会随着循环迭代相继访问，但是不连续（因为每次循环都要访问几个不同的数组）。考虑LRU这种策略，因为当前访问过的数据在未来还会多次访问，但是被再次访问之前很可能已经被evict了，所以这种策略就会非常吃亏，而TreePLRU正是从LRU衍生而来，所以性能表现最差也情有可原，FIFO表现差的原因类似。而随机策略这时反而更好，因为LRU那种思路导致的Miss在随机策略的影响下会降低许多。当然随机策略也不完全最佳，所以我们需要NMRU这种结合了Random和LRU特点的更加均衡的策略。

Cache的associativity，在本次任务规定的范围内，根据数据可知影响不大。不过我之前没加associativity参数，测试了默认值dcache.setAssoc=2的情况，虽然simTicks没有明显变化，但是四种策略的MissRate明显比setAssoc=8的情况低，具体来讲，dcache.overallMissRate都大概在0.046~0.049范围，而且两种非随机策略甚至表现更好。

对于这次实验中表现较差的TreePLRU和FIFO策略，降低setAssoc可能会有利于这些策略取得更优的表现，在程序mm的这种情况下，降低associativity可以减少多次访问的数据被反复evict的情况。