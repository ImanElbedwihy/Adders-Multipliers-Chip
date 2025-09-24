
# Adders and Multipliers Chip
# Table of Contents     <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSELyjFUpiMY8gBUztr5cj3sJmHrWIL9ZR0cQ&usqp=CAU"  width="45"/>

- [Part 1: Adders](#part-1-adders)
- [Part 2: Multipliers](#part-2-multipliers)
- [Part 3: Generating Chip](#part-3-generating-chip)
- [Contributors](#contributors)


## Part 1: Adders           <img src="https://cdn-icons-png.flaticon.com/512/738/738882.png"  width="45"/>


### About
This section explores various 32-bit signed adders implemented in Verilog. The focus is on studying the characteristics of different adder implementations and evaluating their performance. A comprehensive testbench validates each adder, and synthesis is performed with specified constraints.

### Overview
This part covers the following adders:

- Verilog (+) version of adders
- Ripple Carry Adder
- Carry Look-Ahead Adder
- Carry Bypass Adder
- Carry Select Adder


**Test Cases Covered:**
- Overflow of positive numbers.
- Overflow of negative numbers.
- Addition of positive and negative numbers.
- Addition of positive and positive numbers.
- Addition of negative and negative numbers.
- Additional 3 random test cases.

### then the most appropriate adder was chosen to create a floating-point adder (IEEE-standard).

## Part 2: Multipliers   <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxmI8easLg_QGgNngTP8PUD4E4Zp8S10SguA&usqp=CAU"  width="40"/>

### About
In this section, 32-bit signed multipliers are designed and implemented in Verilog. The chosen adder from Part 1 is integrated into the multiplier implementations. A comprehensive testbench is created, and synthesis is performed with specified constraints.

### Overview
This part covers the following multipliers:

- Verilog (*) version of multiplier
- Multiplier Tree (combinational)
- Sequential Multiplier using shift & accumulate
- Booth Algorithm (Original algorithm)


**Test Cases Covered:**
- Multiplication of positive and negative numbers.
- Multiplication of positive and positive numbers.
- Multiplication of negative and negative numbers.
- Multiplication of negative and positive numbers.
- Multiplication by zero.
- Multiplication by 1.
- Additional 2 random test cases.

#### then the most appropriate multiplier was chosen to create a floating-point multiplier (IEEE-standard).

    


## Part 3: Generating Chip    <img src="https://www.realeyesit.com/wp-content/uploads/2023/12/ID_How_it_Works_1_anim-1.gif"  width="75"/>


### About
This section involves the integration of the Phase One adder and Phase Two multiplier to generate a chip. Synthesis, placement, and routing are performed with specified constraints. Post-routing simulation is conducted, and GDS files are generated for each design.

### Overview
This part summarizes the synthesis, placement, routing, post-routing simulation, and GDS file generation processes for the final chip.
 ## Contributors
<table  align='center'> 
<tr>
    <td align="center">
        <a href="https://github.com/Menna-Ahmed7">
            <img src="https://avatars.githubusercontent.com/u/110634473?v=4" width="100;"alt="Menna-Ahmed7"/>
            <br />
            <sub><b>Menna</b></sub>
        </a>
    </td>
    <td align="center">
        <a href="https://github.com/ImanElbedwihy">
            <img src="https://avatars.githubusercontent.com/u/120182209?v=4" width="100;" alt="ImanElbedwihy"/>
            <br />
            <sub><b>Iman</b></sub>
        </a>
    </td>
        <td align="center">
        <a href="https://github.com/nesma-shafie">
            <img src="https://avatars.githubusercontent.com/u/120175134?v=4" width="100;" alt="nesma-shafie"/>
            <br />
            <sub><b>Nesma</b></sub>
        </a>
    </td>
    <td align="center">
        <a href="https://github.com/Sara-Gamal1">
            <img src="https://avatars.githubusercontent.com/u/106556638?v=4" width="100;" alt="Sara-Gamal1"/>
            <br />
            <sub><b>Sara</b></sub>
        </a>
    </td></tr>
</table>
