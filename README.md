# Debiasing-BERT
1) Clone the https://github.com/moinnadeem/StereoSet, which we will use to evaluate  the ICAT, SS, and LM score
2)
i)Run the Preparing_training_testing_set.ipynb to get the training and testing data from
the intra-sentences in the Stereo-Set (80% training ,20%testing).

ii) Run the BERT_finetuning_1686.ipynb to get a language model trained on the above
training set. Save the model and its tokenizer.

iii) For extrinsic data, follow Step d and run the files in the given order
Dataset_creation(kmeans+GoogleApi).ipynb
search_query_1.ipynb
downloading_contents(wget).bash
document_extraction_wget.ipynb
document_extraction_vers1.ipynb

3) Pass the models from step 2 to the evaluation pipeline on the new testing set to get the ICAT, SS, and LM scores.
4) To reproduce our result, download the folder  from https://drive.google.com/drive/folders/1j3JwXYt3MJTPPwreG6R6yd8ejsFcyQcw?usp=sharing
5) In the following folder ,there are two fine tuned  models and their tokenizer (model_stereoset_FINETUNING_96k_epoch2,model_stereoset_1686)
6) Run the eval_discriminative_model.py for the pre-trained BERT to get the probability of the masked tokens in the form of a JSON file and run the FineTuneDataset_BeRTmodels.py by passing the fine-tune models and their tokenizers to get a similar JSON file. The JSON files will be present in the prediction folder.
7) Run the following command to get the result .  
     python evaluation.py --gold-file ../data/data.json --predictions-dir predictions

