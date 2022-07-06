# N_bit_adder
Adders for arbitrarily large binary numbers can be constructed by cascading full adders.

The carry bit ``ripples'' from one stage to the next.

A drawback of this circuit is that the carry information has to propagate through all stages.

I.e., there is an electrical path from A0 and B0 to S5 in the diagram below.

This path traverses 2N-1 gates in an N-bit adder.

This may lead to undesirably long delays before the output stabilizes.

![img110](https://user-images.githubusercontent.com/82304155/177521109-00f0d674-65d4-4cd9-8999-ba04d6db0419.gif)


result after the implementation of the code
<img width="1337" alt="Screenshot 2022-07-06 at 3 11 35 PM" src="https://user-images.githubusercontent.com/82304155/177521434-2b421b79-9d25-4bcc-8a30-60071d6c1f40.png">
