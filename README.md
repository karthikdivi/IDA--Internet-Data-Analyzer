# IDA--Internet-Data-Analyzer
IDA - Internet Data Analyzer for UNIX based systems

# Why IDA
All the users may not require unlimited data plans. So service providers provide limited data plans also. In these types of cases there will be downloadable limit for the user. The tool should be capable of calculate data transfers in dial up internet connection.
Already in existence some tools are available which calculate the data transfer but they are not intimating to the user about the data limit. All the users may not have the idea about the data transfer and limitations. So by using IDA tool the users who are not having clear knowledge on limitations can be capable of control their data transfers.

# About Implementation
The IDA contains mainly contains three stages
First stage: 
In this stage for every second the amount of transferring data is calculated and that values are send to the stage 2
 Second stage: 
In this stage by taking the values obtained from stage 1, the total   amount of data transfer from the beginning of the connection will be calculated.
And these data will be sent to the stage 3
Third stage: 
In this stage   files maintain data taken from the stage2 and updated regularly, by these data pie charts and bar charts will be created which are very easy to understand by the users.


#Screenshots 
######The graphical user interface for the IDA:  
![](images/i1.png?raw=true "")

######Creating internet connection by connect button:
![](images/i2.png?raw=true "")

######Showing total usage of data for a month:
![](images/i3.png?raw=true "")

######Showing peak speed from the starting of the connection:
![](images/i4.png?raw=true "")

######Showing the remaining data for a month:
![](images/i5.png?raw=true "")

######Starting data recording by Record button:
![](images/i6.png?raw=true "")

######Showing current data transfers:
![](images/i7.png?raw=true "")