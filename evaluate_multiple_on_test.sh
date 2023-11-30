large_model="alconzel/retrain-coinpp/2935shbl"
medium_model="alconzel/retrain-coinpp/36azyjru"
small_model="alconzel/retrain-coinpp/1qjgt7iu"


for model in $large_model $medium_model $small_model; do
    for bits in 3 4 6 7 9 10 16 32; do
        echo "Evaluating model $model on $bits bits"
        python3 evaluate.py --wandb_run_path $model --modulation_dataset modulations_test_3_steps_${bits}_bits_dequantized.pt >> results.txt
    done
done