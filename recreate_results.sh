large_model="alconzel/retrain-coinpp/3j2jem0t"
medium_model="alconzel/retrain-coinpp/2f4po0o3"
small_model="alconzel/retrain-coinpp/18ysrwjc"



python3 evaluate.py --wandb_run_path $small_model --modulation_dataset modulations_train_3_steps_5_bits_dequantized.pt >> results.txt
python3 evaluate.py --wandb_run_path $medium_model --modulation_dataset modulations_train_3_steps_5_bits_dequantized.pt >> results.txt
python3 evaluate.py --wandb_run_path $medium_model --modulation_dataset modulations_train_3_steps_6_bits_dequantized.pt >> results.txt
python3 evaluate.py --wandb_run_path $medium_model --modulation_dataset modulations_train_3_steps_7_bits_dequantized.pt >> results.txt
python3 evaluate.py --wandb_run_path $large_model --modulation_dataset modulations_train_3_steps_7_bits_dequantized.pt >> results.txt
python3 evaluate.py --wandb_run_path $large_model --modulation_dataset modulations_train_3_steps_8_bits_dequantized.pt >> results.txt
