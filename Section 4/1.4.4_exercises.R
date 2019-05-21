# Exercise 1
# In the drug trial dataset, what is the correlation (Spearman’s ρ) between age
# and starting weight among men?
# Note: patients with  missing ages (NAs) must first be removed 
drug_trial <- read.csv("drug_trial.csv")
drug_trial <- drug_trial[! is.na(drug_trial$age), ]
drug_trial_men <- drug_trial[drug_trial$sex == "M", ]
cor(drug_trial_men$age, drug_trial_men$starting_weight, method = "spearman") # 0.08

# Among women?
drug_trial_women <- drug_trial[drug_trial$sex == "F", ]
cor(drug_trial_women$age, drug_trial_women$starting_weight, method = "spearman") # 0.01

# Exercise 2
# Patients in the drug trial should have been randomly assigned to either the
# drug or placebo groups. Is there a significant difference between the mean
# starting weights of the patients in each group?
t.test(drug_trial$starting_weight ~ drug_trial$pill) # p = 0.6545; null hypothesis could not be rejected

# What about between their ages?
t.test(drug_trial$age ~ drug_trial$pill) # p = 0.2816; null hypothesis could not be rejected