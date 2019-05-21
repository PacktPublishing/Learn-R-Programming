# Exercise 1
# In the drug trial dataset, create a new column that describes each patient in
# a full sentence including their ID, age and sex. For example, ‘Patient 12345
# is a 64 year old man.’
# Note: patients with  missing ages (NAs) must first be removed 
drug_trial <- read.csv("drug_trial.csv")
drug_trial <- drug_trial[! is.na(drug_trial$age), ]
drug_trial$patient_id <- sub("ID_", "", drug_trial$patient_id)
levels(drug_trial$sex) <- c("woman", "man")
drug_trial$description <-
  paste("Patient",
        drug_trial$patient_id,
        "is a",
        drug_trial$age,
        "year old",
        drug_trial$sex)

# Exercise 2
# In the drug trial dataset, rename ‘drug’ to ‘Slimerol’ and ‘placebo’ to ‘Sugar’.
drug_trial <- read.csv("drug_trial.csv")
levels(drug_trial$pill) <- c("Slimerol", "Sugar")

# Exercise 3
# Create a new column in the drug trial data set containing the change in weight
# of each patient during the experiment. Using a t-test, was there a significant
# difference in the change in weight between the drug and placebo groups?
drug_trial <- read.csv("drug_trial.csv")
drug_trial$change_in_weight <- drug_trial$starting_weight - drug_trial$final_weight
t.test(drug_trial$change_in_weight ~ drug_trial$pill) # p < 2.2e-16 - the null hypothesis is rejected