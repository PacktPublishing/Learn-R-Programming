# Exercise 1
# Load the drug trial dataset.
drug_trial <- read.csv("drug_trial.csv")

# What was the median age of patients who received the placebo?
# Note: we must first remove missing ages (NA) to calculate the median correctly
drug_trial_no_NAs <- drug_trial[! is.na(drug_trial$age), ]
median(drug_trial_no_NAs[drug_trial_no_NAs$pill == "placebo", "age"]) # 45

# What was the lowest starting weight among patients aged 50 or younger?
min(drug_trial_no_NAs[drug_trial_no_NAs$age <= 50, "starting_weight"]) # 45.1

# Exercise 2
# The aim of the drug trial was to determine if the drug helped patients to lose
# weight. Calculate the mean and standard deviation starting and final weights
# for the patients who received the drug and those who received the placebo.
# Does it look like the drug worked?
starting_weight_drug <- drug_trial[drug_trial$pill == "drug", "starting_weight"]
starting_weight_placebo <- drug_trial[drug_trial$pill == "placebo", "starting_weight"]
final_weight_drug <- drug_trial[drug_trial$pill == "drug", "final_weight"]
final_weight_placebo <- drug_trial[drug_trial$pill == "placebo", "final_weight"]
mean(starting_weight_drug) # 80.9
sd(starting_weight_drug) # 13.9
mean(starting_weight_placebo) # 80.4
sd(starting_weight_placebo) # 13.4
mean(final_weight_drug) # 73.0
sd(final_weight_drug) #14.3
mean(final_weight_placebo) # 77.3
sd(final_weight_placebo) # 13.4

# Conclusion: although no statistical test has been performed, the first
# impression is that the drug was effective in helping people lose weight.

# Exercise 3
# In the drug trial, all patients should have been assigned a unique random
# patient ID. Write a single line of R code that returns TRUE if every patient’s
# ID is unique. This code should work for any number of patients.
nrow(drug_trial) == length(unique(drug_trial$patient_id)) # TRUE