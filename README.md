
# Design of Digital Systems, Group Mini-Project 2021 (README)

## Problem Statement

 * Suppose you have designed a logic circuit for an 2x1 mux. Logic and block diagram of a 2x1 mux are shown below.
  <br> 
  ![](https://raw.githubusercontent.com/DDS-Mini-Project-2021-Group-21/dds_mini_project_2021/main/problem_statement.png)
  <br>  
 * Any of the input lines I0, I1, S, or the output lines from the gates (AND, NOT, OR) can be affected by a stuck-at faults. 
 *  Design, synthesize this mux and test it for this fault.
<hr>

## Team members
* **ISHAAN SINGH (Team Leader) - 191CS124**
* IKJOT SINGH DHODY - 191CS123
* SWAPNIL GUDURU - 191CS161
* AAKARSHEE JAIN - 191CS102
* PRACHI PRIYAM SINGH - 191CS142

<hr>

## Project Directory

* As you can see below, the project directory has **2 subfolders**
    * Modules and Reports
    * Simulation Screenshots
* It also has the **project report** in both pdf and docx format.
* Also, it has the **project archive** for one to open the project in xilinx.
  <br>


![Project Directory](https://user-images.githubusercontent.com/55295613/111946353-54457b80-8b01-11eb-95ff-99e237b4a0d9.png)

* Inside the **Modules and Reports** folder, we have the following subfolders
  <br>
  ![Modules and Reports](https://user-images.githubusercontent.com/55295613/111946862-5956fa80-8b02-11eb-9858-7a08c46cc1db.png)
* Inside each of the folders(except PROPER), we have 2 subfolders, representing the different stuck at fault for the particular wire.
* Inside those folders, we have 4 files : 
  * Design Summary Timing Report (PDF)
  * Logic Diagram (PDF)    
  * Look-Up Table Diagram (PDF)
  * Power Report (.pwr)

* Inside the Simulation Screenshots folder, we have the following images : 
  ![Simulation Screenshots](https://user-images.githubusercontent.com/55295613/111947454-87890a00-8b03-11eb-8362-a7bcec87c1e7.png)

* The naming convention is explained below, for each of these directories.  

## Understanding the naming convention
* **Modules and Reports**
  * The folder W0 represents all the reports/modules pertaining to Wire - 0.
  * In turn, the folder W0_0 represents the module pertaining to the wire 0 with a stuck-at-0 fault.
* **Simulation Screenshots**
  * Some of the file names are self-explanatory(for example: power_report.png).
  * Other file names like (00.png,01.png, etc) are named according to the following rules : 
    * Two digits in the name represents : 
    * The first digit represents the wire number.
    * The second digit represents the fault-type.
    * Therefore, the file 61.png represents wire 6, stuck-at-1-fault simulation.

<hr>
<hr>
<hr>
