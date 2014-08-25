##Codebook for 'averages.txt'

This file describes the contents of the table "averages.txt", created by the "run_analysis.R" script. For further information about the script, please refer to the "README" document in this repo. 

The description of the original data on which this script was performed can be found in README.txt in the downloaded folder. Here you can find extensive information on the study design and the collection of the data.

Read the file "averages.txt" in R by using: read.table("UCI HAR Dataset/averages.txt",header=TRUE)

This file contains 180 rows and 68 columns. The first columns are: 1) the subject number, and 2) the activity the subject was performing during the measuring of the data. The subject number is an integer, and the activity a factor.

Subjects:
* subject 1 to 30

Activity:
* walking
* walking upstairs
* walking downstairs
* sitting
* standing
* laying

From the original data, only the means and standard deviations were extracted, resulting in 66 variables.
For the file "averages.txt" the averages of each of the 66 variables was calculated, for each unique combination of subject and activity (resulting in 30*6=180 rows). These numeric variables can range from -1 to 1.

The 66 variables are:

Means:
* Time.Body.Acceleration, mean for the X, Y and Z-axis                                                   
* Time.Gravity.Acceleration, mean for the X, Y and Z-axis                      
* Time.Body.Acceleration.Jerk, mean for the X, Y and Z-axis                  
* Time.Body.Gyroscope, mean for the X, Y and Z-axis                           
* Time.Body.Gyroscope.Jerk, mean for the X, Y and Z-axis                       
* Time.Body.Acceleration.Magnitude mean                    
* Time.Gravity.Acceleration.Magnitude mean                     
* Time.Body.Acceleration.Jerk.Magnitude mean                  
* Time.Body.Gyroscope.Magnitude mean                         
* Time.Body.Gyroscope.Jerk.Magnitude mean                   
* Frequency.Body.Acceleration, mean for the X, Y and Z-axis                     
* Frequency.Body.Acceleration.Jerk, mean for the X, Y and Z-axis                
* Frequency.Body.Gyroscope, mean for the X, Y and Z-axis                        
* Frequency.Body.Acceleration.Magnitude mean                   
* Frequency.Body.Acceleration.Jerk.Magnitude mean              
* Frequency.Body.Gyroscope.Magnitude mean              
* Frequency.Body.Gyroscope.Jerk.Magnitude mean

Standard deviations:
* Time.Body.Acceleration, standard deviation for the X, Y and Z-axis              
* Time.Gravity.Acceleration, standard deviation for the X, Y and Z-axis          
* Time.Body.Acceleration.Jerk, standard deviation for the X, Y and Z-axis      
* Time.Body.Gyroscope, standard deviation for the X, Y and Z-axis                
* Time.Body.Gyroscope.Jerk, standard deviation for the X, Y and Z-axis          
* Time.Body.Acceleration.Magnitude standard deviation         
* Time.Gravity.Acceleration.Magnitude standard deviation        
* Time.Body.Acceleration.Jerk.Magnitude standard deviation     
* Time.Body.Gyroscope.Magnitude standard deviation             
* Time.Body.Gyroscope.Jerk.Magnitude standard deviation        
* Frequency.Body.Acceleration, standard deviation for the X, Y and Z-axis         
* Frequency.Body.Acceleration.Jerk, standard deviation for the X, Y and Z-axis    
* Frequency.Body.Gyroscope, standard deviation for the X, Y and Z-axis           
* Frequency.Body.Acceleration.Magnitude standard deviation     
* Frequency.Body.Acceleration.Jerk.Magnitude standard deviation
* Frequency.Body.Gyroscope.Magnitude standard deviation        
* Frequency.Body.Gyroscope.Jerk.Magnitude standard deviation  
