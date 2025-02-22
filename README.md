# -4-STAGE-PIPELINED-PROCESSOR-

COMPANY NAME: CODTECH IT SOLUTION PVT.LTD

CONDIDATE NAME: ABHIJIT WANKHEDE

INTERN ID: CT12TNT

DOMAIN NAME: VLSI

DURATION: 8 weeks

MENTOR NAME: NEELA SONTOSH

DESCRIPTION:

Pipelining is a technique used in modern processors to improve performance by executing multiple instructions simultaneously. It breaks down the execution of instructions into several stages, where each stage completes a part of the instruction. These stages can overlap, allowing the processor to work on different instructions at various stages of completion, similar to an assembly line in manufacturing.
In this article, you will get a detailed overview of Pipeline in Computer Organization and Architecture.

# Stages of a 4-Stage Pipeline
# Fetch (IF - Instruction Fetch)
The processor fetches the next instruction from memory.
The Program Counter (PC) is incremented to point to the next instruction.

# Decode (ID - Instruction Decode & Register Read)
The instruction is decoded to determine the operation.
Required operands are read from the register file.
Control signals are generated for execution.

# Execute (EX - Execution/ALU Operation)
The Arithmetic Logic Unit (ALU) performs computations (e.g., ADD, SUB).
For Load/Store instructions, the effective memory address is calculated.

# Write Back (WB - Register Write Back)
The result is written back to the register file if needed.
Memory operations (if any) are completed.

# Pipeline Working
Parallel Execution: Multiple instructions are in different stages of execution at the same time.
Instruction Overlap: A new instruction is fetched while others are in decode, execute, or write-back phases.

# Advantages of Pipelining
Increased Throughput: Pipelining enhance the throughput capacity of a CPU and enables a number of instruction to be processed at the same time at different stages. This leads to the improvement of the amount of instructions accomplished in a given period of time, thus improving the efficiency of the processor.
Improved CPU Utilization: From superimposing of instructions, pipelining helps to ensure that different sections of the CPU are useful. This gives no time for idling of the various segments of the pipeline and optimally utilizes hardware resources.
Higher Instruction Throughput: Pipelining occurring because when one particular instruction is in the execution stage it is possible for other instructions to be at varying stages of fetch, decode, execute, memory access, and write-back. In this manner there is concurrent processing going on and the CPU is able to process more number of instructions in a given time frame than in non pipelined processors.
Better Performance for Repeated Tasks: Pipelining is particularly effective when all the tasks are accompanied by repetitive instructions, because the use of the pipeline shortens the amount of time each task takes to complete.
Scalability: Pipelining is RSVP implemented in different types of processors hence it is scalable from simple CPU’s to an advanced multi-core processor.

# Disadvantages of Pipelining
Pipeline Hazards: Pipelining may result to data hazards whereby instructions depends on other instructions; control hazards, which arise due to branch instructions; and structural hazards whereby there are inadequate hardware facilities. Some of these hazards may lead to delays hence tough strategies to manage them to ensure progress is made.
Increased Complexity: Pipelining enhances the complexity of processor design as well as its application as compared to non-pipelined structures. Pipelining stages management, dealing with the risks and correct instruction sequence contribute to the design and control considerations.
Stall Cycles: When risks are present, pipeline stalls or bubbles can be brought about, and this produces idle times in certain stages in the pipeline. These stalls can actually remove some of the cycles acquired by pipelining, thus reducing the latter’s efficiency.
Instruction Latency: While pipelining increases the throughput of instructions the delay of each instruction may not necessarily be reduced. Every instruction must still go through all the pipeline stages and the time it takes for a single instruction to execute can neither reduce nor decrease significantly due to overheads.
Hardware Overhead: It increases the complexity in designing the pipelining due to the presence of pipeline registers and the control logic used in managing the pipe stages and the data. This not only increases the cost of the wares but also forces integration of more complicated, and thus costly, hardware.

# Conclusion
Pipelining is one of the most essential concepts and it improves CPU’s capability to process several instructions at the same time across various stages. It increases immensely the system’s throughput and overall efficiency by effectively determining the optimum use of hardware. On its own it enhances the processing speed but handling of pipeline hazards is critical for enhancing efficiency. It is thus crucial for any architect developing systems that will support HPC to have a war chest of efficient pipelining strategies that they can implement.

# Basic Instructions
ADD: Adds two registers and stores the result in a register.
SUB: Subtracts one register from another and stores the result.
LOAD: Loads data from memory into a register.

# output:

![Image](https://github.com/user-attachments/assets/a681d125-4cb6-4126-a5a5-b6d4c815a090)
