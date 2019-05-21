# Exercise 1
# Load the drug trial dataset.
drug_trial <- read.csv("drug_trial.csv")

# How many patients in the trial were 40 years old or older?
nrow(drug_trial[drug_trial$age >= 40, ]) # 291

# How many women in the trial weighed less than 55 kg at the start of the trial?
drug_trial_women <- drug_trial[drug_trial$sex == "F", ]
nrow(drug_trial_women[drug_trial_women$starting_weight < 55, ]) # 1

# How many 61 year olds were in the trial?
nrow(drug_trial[drug_trial$age == 61, ]) # 12