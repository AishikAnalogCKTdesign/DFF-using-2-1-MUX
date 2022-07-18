# DFF-using-2-1-MUX
DFF and 2:1 MUX are the most common modules used in design . Lets break the gap between them
A flip-flop is designed using two latches in a master slave configuration meaning a flip-flop is designed using connecting two latches back to back, first latch being the master and second latch being the slave. Also we can make a latch using a mux. Hence, we first to come up with the flip-flop.

![image](https://user-images.githubusercontent.com/68297371/179556965-3c1f206c-3827-4d87-8de6-3d52033ce16c.png)

As shown in the figure, if we tie output of a 2:1 MUX back to D0 pin of mux, whenever select is at ‘0’, we hold the output state as it is fed back to itself through the D0 input of the MUX. We tie input ‘D’ to D1 pin of the MUX and tie select line to CLK(Clock). Whenever select line, which is clock, is high we pass value on input pin D to the output O. Now let’s explore how a flip-flop is made using two latches.

![image](https://user-images.githubusercontent.com/68297371/179557078-62673b17-e9a9-442b-b3a5-288416ce6e67.png)


As shown in the figure, when you connect a low phase latch followed by a high phase latch without any delay in between them, you get a flip-flop. First latch is called master and second latch is called slave, because second latch always follows the data that first latch captures. In a sense first latch acts as a master device and second latch always follows master. Master latch is active low phase, hence it is open during the low phase of the clock and input data at ‘D’ pin of this latch has to setup to the rising edge of the clock, as that is the edge when master latch closes, or captures the data. It is important to realize that the data at input pin ‘D’ of the master latch that arrives at during the transparent window of the master latch, can not push transparently through slave, as while master latch is open during the low phase of clock, slave latch is closed during this time. at the same time, because clock has risen, the slave latch opens and becomes transparent and allows the data at slave latch input to appear on th ‘Q’ pin of the master-slave. As you can see the only time a valid output appears from input ‘D’ to the output ‘Q’ pin is when clock rises. This way the positive edge triggered master slave flip-flop works. Having learn about how to come up with a latch using 2:1 MUX and how to make a flip-flop using latches, we can now come up with a flip-flop using 2:1 MUX like something shown below:

![image](https://user-images.githubusercontent.com/68297371/179557186-363a87d4-5938-414b-ac9a-e6748e8b893e.png)



Summary:

Generate A Latch Using Mux. Use Back to Back Latches at different clock edges to make a FLop

Latch -> Mux; Mux -> Flop
