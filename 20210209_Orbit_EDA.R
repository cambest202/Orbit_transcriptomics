### Orbit Transcriptomics: Exploratory Data Analysis of transcriptomic data from Orbit study

setwd('/Users/cameronbest/University/MRC_DTP_in_Precision_Medicine/Project/RA/Orbit/Orbit_transcriptomics')

###############################################
###libraries------
###############################################
library(ggplot2)
library(tidyverse) 
library (readr)
library(ggpubr)
library (mosaic)
library (dplyr)
library (data.table)
library(reshape2)
library (gtools)
library(plyr)
library(limma)
library(ggrepel)
library(broom)
library(caret)
library(rsample)
library(sandwich)
library(randomForest)
library(RColorBrewer)
library(purrr)
library(devtools)
library(e1071)
library(ggraph)
library(igraph)
library(pscl)
library(parallel)
library(doParallel)
library(ROCR) 

###############################################
### Files -------------------------------------
###############################################
sample_sheet <- read.csv('20150903_Orbit_sample_sheet.csv', header=TRUE)
all_treats <- read.csv('DESeq_WG_Orbit_All_treatments_20150925_vst_Unblind_matrix.csv', header=TRUE)
rit_treats <- read.csv('DESeq_Rituximab_eff_of_treat_response_control_for_gender_20151012_WG__HTSFiltered_vst_Unblind_matrix.csv', header=TRUE)
tnfi_treats <- read.csv('DESeq_Anti-TNF_eff_of_treat_response_control_for_gender_20151012_WG__HTSFiltered_vst_Unblind_matrix.csv', header=TRUE)
